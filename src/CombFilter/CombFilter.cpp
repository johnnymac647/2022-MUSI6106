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


Error_t CCombFilterBase::process(float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames){


    for (int c = 0; c < m_iNumberOfChannels; c++)
    {
//        int iStartingReadIdx = m_pRBDelayLine[c]->getReadIdx();
//        m_pRBDelayLine[c]->setWriteIdx(iStartingReadIdx + m_iMaxDelayLengthInSamples);
        m_pRBDelayLine[c]->reset();
        for (int i = 0; i < iNumberOfFrames; i++)
        {
            float fCurVal = ppfInputBuffer[c][i];
            float fDelayVal = m_pRBDelayLine[c]->getPostInc();
            float fCombinedVal = fCurVal + m_fGain*fDelayVal;
            ppfOutputBuffer[c][i] = fCombinedVal;
            switch(m_iFilterType){
                case 0:
                    m_pRBDelayLine[c]->putPostInc(fCurVal);
                    break;
                case 1:
                    m_pRBDelayLine[c]->putPostInc(fCombinedVal);
                default:
                    m_pRBDelayLine[c]->putPostInc(fCurVal);
            }
        }
    }
    return Error_t::kNoError;
}
