//
//  CombFilter.cpp
//  CombFilter
//
//  Created by JOHN MCNAMARA on 2/12/22.
//

#include "CombFilter.hpp"

//constructors for CCombFilterBase, CFIRFilter, CIIRFilter
//CCombFilterBase::CCombFilterBase () :
//    m_pCInputBuff(0),
//    m_pCOutputBuff(0)
//{
//    this->reset();
//}

CFIRFilter::CFIRFilter (){
    
}

CIIRFilter::CIIRFilter (){
    
}


Error_t CFIRFilter::process(**ppfInputBuffer, **ppfOutputBuffer, iNumberOfFrames){
    int i_DelaySamples = m_iMaxDelayLengthInSamples;
    int i_curReadIdx = ppfInputBuffer.getReadIdx();
    int i_delayedReadIdx = i_curReadIdx - i_DelaySamples;

    
    
    ppfInputBuffer.setReadIdx(i_delayedReadIdx);
    float f_delayedValue = ppfInputBuffer.get();
    ppfInputBuffer.setReadIdx(i_curReadIdx);
    float f_curValue = ppfInputBuffer.getPostInc();
    
    return Error_t::kNoError
}

Error_t CIIRFilter::process(**ppfInputBuffer, **ppfOutputBuffer, iNumberOfFrames){
    return Error_t::kNoError
}
