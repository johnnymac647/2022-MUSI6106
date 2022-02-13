
#include <iostream>
#include <ctime>

#include "MUSI6106Config.h"

#include "RingBuffer.h"
#include "AudioFileIf.h"
#include "CombFilterIf.h"
#include "CombFilter.hpp"

using std::cout;
using std::endl;

// local function declarations
void    showClInfo ();

/////////////////////////////////////////////////////////////////////////////////
// main function
int main(int argc, char* argv[])
{
    showClInfo();
    std::string sInputFilePath,                 //!< file paths
                sOutputFilePath;

    static const int kBlockSize = 1024;

    clock_t time = 0;

    float **ppfAudioData = 0;

    CAudioFileIf *phAudioFile = 0;
    CCombFilter *phCombFilter = 0;
    std::fstream hOutputFile;
    CAudioFileIf::FileSpec_t stFileSpec;

    showClInfo();

    //////////////////////////////////////////////////////////////////////////////
    // parse command line arguments
    if (argc < 2)
    {
        cout << "Testing Comb Filter Implementation\n";

        cout << "Test 1: FIR: Output is zero if input freq matches feedforward\n";
        //TODO: Implement Test 1
        cout << "Test 2: IIR: amount of magnitude increase/decrease if input freq matches feedback\n";
        //TODO: Implement Test 2
        cout << "Test 3: FIR/IIR: correct result for VARYING input block size\n";
        //TODO: Implement Test 3
        cout << "Test 4: FIR/IIR: correct processing for zero input signal\n";
        //TODO: Implement Test 4
        cout << "Test 5 One more additional MEANINGFUL test to verify your filter implementation\n";
        //TODO: Implement Test 5

        return -1;
    }
    else if (argc < 5)
    {
        cout << "Not enough parameters passed.";
        return -1
    }
    else
    {
        sInputFilePath = argv[1];
        sOutputFilePath = sInputFilePath + "_delayed.txt";

        CCombFilterIf::CombFilterType_t eFilterType = static_cast<CCombFilter::CombFilterType_t>(argv[2]);
        float f_gainValue = static_cast<float>(argv[3]);
        float f_delayValue = static_cast<float>(argv[4]);

    }

    //////////////////////////////////////////////////////////////////////////////
    // open the input wave file
    CAudioFileIf::create(phAudioFile);
    phAudioFile->openFile(sInputFilePath, CAudioFileIf::kFileRead);
    if (!phAudioFile->isOpen())
    {
        cout << "Wave file open error!";
        CAudioFileIf::destroy(phAudioFile);
        return -1;
    }
    phAudioFile->getFileSpec(stFileSpec);

    //create and initialize the comb filter
    CCombFilterIf::create(phCombFilter);
    phCombFilter->init(eFilterType, f_delayValue, stFileSpec.fSampleRateInHz, stFileSpec.iNumChannels);
    phCombFilter->setParam(CCombFilterIf::kParamGain, f_gainValue);

    //////////////////////////////////////////////////////////////////////////////
    // open the output text file
    hOutputFile.open(sOutputFilePath.c_str(), std::ios::out);
    if (!hOutputFile.is_open())
    {
        cout << "Text file open error!";
        CAudioFileIf::destroy(phAudioFile);
        return -1;
    }

    //////////////////////////////////////////////////////////////////////////////
    // allocate memory
    ppfAudioData = new float*[stFileSpec.iNumChannels];
    for (int i = 0; i < stFileSpec.iNumChannels; i++)
        ppfAudioData[i] = new float[kBlockSize];

    if (ppfAudioData == 0)
    {
        CAudioFileIf::destroy(phAudioFile);
        hOutputFile.close();
        return -1;
    }
    if (ppfAudioData[0] == 0)
    {
        CAudioFileIf::destroy(phAudioFile);
        hOutputFile.close();
        return -1;
    }

    time = clock();

    //////////////////////////////////////////////////////////////////////////////
    // get audio data and write it to the output text file (one column per channel)
    while (!phAudioFile->isEof())
    {
        // set block length variable
        long long iNumFrames = kBlockSize;

        // read data (iNumOfFrames might be updated!)
        phAudioFile->readData(ppfAudioData, iNumFrames);

        cout << "\r" << "reading and writing";

        // write
        for (int i = 0; i < iNumFrames; i++)
        {
            for (int c = 0; c < stFileSpec.iNumChannels; c++)
            {
                
                
//                hOutputFile << ppfAudioData[c][i] << "\t";
            }
//            hOutputFile << endl;
        }
    }

    cout << "\nreading/writing done in: \t" << (clock() - time) * 1.F / CLOCKS_PER_SEC << " seconds." << endl;

    //////////////////////////////////////////////////////////////////////////////
    // clean-up (close files and free memory)
    CAudioFileIf::destroy(phAudioFile);
    hOutputFile.close();

    for (int i = 0; i < stFileSpec.iNumChannels; i++)
        delete[] ppfAudioData[i];
    delete[] ppfAudioData;
    ppfAudioData = 0;

    // all done
    return 0;

}


void     showClInfo()
{
    cout << "MUSI6106 Assignment Executable" << endl;
    cout << "(c) 2014-2022 by Alexander Lerch" << endl;
    cout  << endl;

    return;
}

