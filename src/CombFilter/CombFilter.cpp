//
//  CombFilter.cpp
//  CombFilter
//
//  Created by JOHN MCNAMARA on 2/12/22.
//

#include "CombFilter.h"


//constructors for CCombFilterBase, CFIRFilter, CIIRFilter
//CCombFilterBase::CCombFilterBase () :
//    //create the buffer here
//
//{
//    this->reset();
//}


Error_t CCombFilterBase::process(float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames){
    int iStartingReadIdx = m_pRBDelayLine->getReadIdx();
    m_pRBDelayLine->setWriteIdx(iStartingReadIdx + m_iMaxDelayLengthInSamples);

    for (int c = 0; c < m_iNumberOfChannels; c++)
    {
        m_pRBDelayLine->reset();
        for (int i = 0; i < iNumberOfFrames; i++)
        {
            float fCurVal = ppfInputBuffer[c][i];
            float fDelayVal = m_pRBDelayLine->getPostInc();
            float fCombinedVal = fCurVal + m_fGainValue*fDelayVal;
            ppfOutputBuffer[c][i] = fCombinedVal;
            switch(m_eFilterType){
                case CCombFilterIf::kCombFIR:
                    m_pRBDelayLine->putPostInc(fCurVal);
                    break;
                case CCombFilterIf::kCombIIR:
                    m_pRBDelayLine->putPostInc(fCombinedVal);
                default:
                    m_pRBDelayLine->putPostInc(fCurVal);
            }
        }
    }
    return Error_t::kNoError;
}
