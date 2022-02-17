
#include <iostream>
#include <fstream>
#include <ctime>

#include "MUSI6106Config.h"

#include "RingBuffer.h"
#include "AudioFileIf.h"
//#include "CombFilterIf.h"
#include "CombFilter.h"

using std::strtof;
using std::cout;
using std::endl;

//function that reads input Audio and applies the combfilter
//abstracted from main to make it easier to use in the test cases
int applyCombFilter(std::string sInputFilePath, std::string sOutputFilePath,
                    float f_gainValue,  float f_delayValue, CCombFilterIf::CombFilterType_t eFilterType,
                    int kBlockSize, bool bVaryingBlock = false){
    // open the input wave file
    CAudioFileIf *phInputAudioFile = 0;
    CAudioFileIf *phOutputAudioFile = 0;
    CCombFilterIf *phCombFilter = 0;
    
    
    CAudioFileIf::create(phInputAudioFile);
    phInputAudioFile->openFile(sInputFilePath, CAudioFileIf::kFileRead);
    if (!phInputAudioFile->isOpen())
    {
        cout << "Input Wave file open error!";
        CAudioFileIf::destroy(phInputAudioFile);
        return -1;
    }
    else{
        cout << "Successfully opened input file!\n";
    }
    CAudioFileIf::FileSpec_t stFileSpec;
    phInputAudioFile->getFileSpec(stFileSpec);

    CAudioFileIf::create(phOutputAudioFile);
    phOutputAudioFile->openFile(sOutputFilePath, CAudioFileIf::kFileWrite);
    if (!phOutputAudioFile->isOpen())
    {
        cout << "Output Wave file open error!";
        CAudioFileIf::destroy(phOutputAudioFile);
        return -1;
    }
    else{
        cout << "Successfully opened output file!\n";
    }

    //create and initialize the comb filter
    CCombFilterIf::create(phCombFilter);
    phCombFilter->init(eFilterType, f_delayValue, stFileSpec.fSampleRateInHz, stFileSpec.iNumChannels);
    phCombFilter->setParam(CCombFilterIf::kParamGain, f_gainValue);

    //////////////////////////////////////////////////////////////////////////////
    // allocate memory
    float **ppfInputAudioData = new float*[stFileSpec.iNumChannels];
    float **ppfOutputAudioData = new float*[stFileSpec.iNumChannels];

    for (int i = 0; i < stFileSpec.iNumChannels; i++){
        ppfInputAudioData[i] = new float[kBlockSize];
        ppfOutputAudioData[i] = new float[kBlockSize];
    }

    if (ppfInputAudioData == 0)
    {
        CAudioFileIf::destroy(phInputAudioFile);
        CAudioFileIf::destroy(phOutputAudioFile);
        return -1;
    }
    if (ppfInputAudioData[0] == 0)
    {
        CAudioFileIf::destroy(phInputAudioFile);
        CAudioFileIf::destroy(phOutputAudioFile);
        return -1;
    }

    clock_t time = clock();
//
//    //////////////////////////////////////////////////////////////////////////////
//    // get audio data and write it to the output text file (one column per channel)
    while (!phInputAudioFile->isEof())
    {
        // set block length variable
        long long iNumFrames = kBlockSize;
        // read data (iNumOfFrames might be updated!)
        phInputAudioFile->readData(ppfInputAudioData, iNumFrames);
        cout << "\r" << "reading and writing";
        phCombFilter->process(ppfInputAudioData, ppfOutputAudioData, iNumFrames);
        phOutputAudioFile->writeData(ppfOutputAudioData, iNumFrames);
        if(bVaryingBlock){
            iNumFrames++;
        }

    }

    cout << "\nreading/writing done in: \t" << (clock() - time) * 1.F / CLOCKS_PER_SEC << " seconds." << endl;

    //////////////////////////////////////////////////////////////////////////////
    // clean-up (close files and free memory)
    CAudioFileIf::destroy(phInputAudioFile);
    CAudioFileIf::destroy(phOutputAudioFile);

    for (int i = 0; i < stFileSpec.iNumChannels; i++){
        delete[] ppfInputAudioData[i];
        delete[] ppfOutputAudioData[i];
    }

    delete[] ppfInputAudioData;
    delete[] ppfOutputAudioData;
    ppfInputAudioData = 0;
    ppfOutputAudioData = 0;
    phInputAudioFile = 0;
    phOutputAudioFile = 0;
    phCombFilter = 0;

    return 0;
}


// local function declarations
void    showClInfo ();

/////////////////////////////////////////////////////////////////////////////////
// main function
int main(int argc, char* argv[])
{
    showClInfo();
    std::string sInputFilePath,                 //!< file paths
                sOutputFilePath;

    static int kBlockSize = 1024;
    clock_t time = 0;
    showClInfo();

    //relevant variable names for initializing the combfilter:
    CCombFilterIf::CombFilterType_t eFilterType;
    float f_gainValue;
    float f_delayValue;

    //////////////////////////////////////////////////////////////////////////////
    // parse command line arguments
    if (argc < 2)
    {
        cout << "Testing Comb Filter Implementation\n";
        cout << "Test 1: FIR: Output is zero if input freq matches feedforward\n";
        sInputFilePath = "../../testAudio/200_test.wav";
        sOutputFilePath = "test1_results.wav";
        int test1 = applyCombFilter(sInputFilePath, sOutputFilePath, 0.5, 0.0025, CCombFilterIf::kCombFIR, kBlockSize);
        
        cout << "Test 2: IIR: amount of magnitude increase/decrease if input freq matches feedback\n";
        sOutputFilePath = "test2_results.wav";
        int test2 = applyCombFilter(sInputFilePath, sOutputFilePath, 0.5, 0.005, CCombFilterIf::kCombIIR, kBlockSize);
        
        cout << "Test 3: FIR/IIR: correct result for VARYING input block size\n";
        sOutputFilePath = "test3a_results.wav";
        int test3a = applyCombFilter(sInputFilePath, sOutputFilePath, 0.5, 0.005, CCombFilterIf::kCombFIR, kBlockSize, true);
        sOutputFilePath = "test3b_results.wav";
        int test3b = applyCombFilter(sInputFilePath, sOutputFilePath, 0.5, 0.005, CCombFilterIf::kCombIIR, kBlockSize, true);
        
        
        cout << "Test 4: FIR/IIR: correct processing for zero input signal\n";
        sInputFilePath = "../../testAudio/0_test.wav";
        sOutputFilePath = "test4a_results.wav";
        int test4a = applyCombFilter(sInputFilePath, sOutputFilePath, 0.5, 0.005, CCombFilterIf::kCombFIR, kBlockSize);
        sOutputFilePath = "test4b_results.wav";
        int test4b = applyCombFilter(sInputFilePath, sOutputFilePath, 0.5, 0.005, CCombFilterIf::kCombIIR, kBlockSize);
        
        
        cout << "Test 5 Zero delay and gain should just return the original signal";
        sInputFilePath = "../../testAudio/200_test.wav";
        sOutputFilePath = "test5_results.wav";
        int test5a = applyCombFilter(sInputFilePath, sOutputFilePath, 0.0, 0.0, CCombFilterIf::kCombFIR, kBlockSize);
        int test5b = applyCombFilter(sInputFilePath, sOutputFilePath, 0.0, 0.0, CCombFilterIf::kCombIIR, kBlockSize);

        return -1;
    }
    else if (argc < 5)
    {
        cout << "Not enough parameters passed.";
        return -1;
    }
    else
    {
        sInputFilePath = argv[1];
        sOutputFilePath = sInputFilePath.substr(0, sInputFilePath.size()-4) + "_delayed.wav";
        std::string filter = argv[2];
        if(filter == "FIR"){
            eFilterType = CCombFilterIf::kCombFIR;
        } else if (filter == "IIR"){
            eFilterType = CCombFilterIf::kCombIIR;
        } else{
            cout << "An invalid argument was passed for the filter type. Valid options include \"FIR\" and \"IIR\".  ";
            cout << "Using the an FIR filter as the default.\n";
            eFilterType = CCombFilterIf::kCombFIR;
        }

        f_gainValue = atof(argv[3]);
        f_delayValue = atof(argv[4]);

    }

    //////////////////////////////////////////////////////////////////////////////
    int filterReturn = applyCombFilter(sInputFilePath, sOutputFilePath, f_gainValue, f_delayValue, eFilterType, kBlockSize);
    return filterReturn;

}


void     showClInfo()
{
    cout << "MUSI6106 Assignment Executable" << endl;
    cout << "(c) 2014-2022 by Alexander Lerch" << endl;
    cout  << endl;

    return;
}


