#include "CombFilter.h"
#include "RingBuffer.h"

CCombFilterBase::CCombFilterBase(){
    m_iBufferSize = setBufferSize();
    m_pRBDelayLine = new CRingBuffer<float>*[m_iNumChannels];
    for (int c = 0; c < m_iNumChannels; c++){
        m_pRBDelayLine[c] = new CRingBuffer<float>(m_iBufferSize);
    }
}

CCombFilterBase::~CCombFilterBase(){
    for (int c = 0; c < m_iNumChannels; c++){
        delete m_pRBDelayLine[c];
    }
    delete m_pRBDelayLine;
    m_pRBDelayLine = 0;
}

Error_t CCombFilterBase::process(float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames){


    for (int c = 0; c < m_iNumChannels; c++)
    {
//        int iStartingReadIdx = m_pRBDelayLine[c]->getReadIdx();
//        m_pRBDelayLine[c]->setWriteIdx(iStartingReadIdx + m_iMaxDelayLengthInSamples);
        m_pRBDelayLine[c]->reset();
        for (int i = 0; i < iNumberOfFrames; i++)
        {
            float fCurVal = ppfInputBuffer[c][i];
            float fDelayVal = m_pRBDelayLine[c]->getPostInc();
            float fCombinedVal = fCurVal + m_fGainValue*fDelayVal;
            ppfOutputBuffer[c][i] = fCombinedVal;
            if(m_eFilterType == kCombFIR){
                m_pRBDelayLine[c]->putPostInc(fCurVal);
            }else if (m_eFilterType == kCombIIR){
                m_pRBDelayLine[c]->putPostInc(fCombinedVal);
            }else{
                m_pRBDelayLine[c]->putPostInc(fCurVal);
            }
        }
    }
    return Error_t::kNoError;
}
