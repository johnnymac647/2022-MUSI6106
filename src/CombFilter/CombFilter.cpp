//
//  CombFilter.cpp
//  CombFilter
//
//  Created by JOHN MCNAMARA on 2/12/22.
//

#include "CombFilter.h"
#include "RingBuffer.h"

//constructors for CCombFilterBase, CFIRFilter, CIIRFilter
//CCombFilterBase::CCombFilterBase () :
//    //create the buffer here
//
//{
//    this->reset();
//}

CFIRFilter::CFIRFilter (){
    
}

CIIRFilter::CIIRFilter (){
    
}

Error_t CFIRFilter::process(float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames){
    
    //relevant stuff from the read 
    float **ppfAudioData = 0;
    ppfAudioData = new float*[m_iNumberOfChannels];
    
    for (int i = 0; i < iNumberOfFrames; i++)
    {
        for (int c = 0; c < m_iNumberOfChannels; c++)
        {
     
            //same to lines in matlab data
            //buffer is the delay
            
//                hOutputFile << ppfAudioData[c][i] << "\t";
        }
//            hOutputFile << endl;
    }
    
    
    int i_DelaySamples = m_iMaxDelayLengthInSamples;
    int i_curReadIdx = ppfInputBuffer.getReadIdx();
    int i_delayedReadIdx = i_curReadIdx - i_DelaySamples;
    
    // delay buffer has a minimum size, but can be as big as practical.
    //get both current value and delayed value from input buffer
    float f_delayedValue = //delayLine.getPostInc();
    float f_curValue = ppfInputBuffer.getPostInc();
    
    //calculate the delayed value and write it to the output buffer
    ppfOutputBuffer[c][i] = ppfInputBuffer[c][i] + m_fGainValue*f_delayedValue;
    ppfOutputBuffer.putPostInc(f_newValue);
    
    return Error_t::kNoError
}

Error_t CIIRFilter::process(float **ppfInputBuffer,float **ppfOutputBuffer, int iNumberOfFrames){
    int i_DelaySamples = m_iMaxDelayLengthInSamples;
    int i_curReadIdx = ppfInputBuffer.getReadIdx();
    int i_delayedReadIdx = i_curReadIdx - i_DelaySamples;

    //get current value from input buffer and delayed value from the output buffer
    ppfOutputBuffer.setReadIdx(i_delayedReadIdx);
    float f_dealyedValue = ppfOutputBuffer.get();
    ppfOutputBuffer.setReadIdx(i_curReadIdx);
    float f_curValue = ppfInputBuffer.getPostInc();
    
    //calculate the delayed value and write it to the output buffer
    float f_newValue = f_curValue + m_fGainValue*f_delayedValue;
    ppfOutputBuffer.putPostInc(f_newValue);
    
    return Error_t::kNoError
}
