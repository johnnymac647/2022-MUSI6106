#include "CombFilter.h"
#include "RingBuffer.h"

CCombFilterBase::CCombFilterBase(CombFilterType_t eFilterType, float fMaxDelaySec, float fSampleRate, int iNumChannels){
    
    m_fSampleRate = fSampleRate;
    m_fMaxDelayLengthInS = fMaxDelaySec;
    m_iMaxDelayLengthInSamples = static_cast<int>(m_fSampleRate * m_fMaxDelayLengthInS);
    
    m_iCurDelayInSamples = 0;
    m_fGainValue = 0;
    
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

Error_t CCombFilterBase::setParam (FilterParam_t eParam, float fParamValue)
{
    int newDelaySamples = static_cast<int>(fParamValue * m_fSampleRate);
    switch(eParam){
        case kParamGain:
            if(fParamValue < -1.0 || fParamValue > 1.0){
                return Error_t::kFunctionInvalidArgsError;
            }else{
                m_fGainValue = fParamValue;
                return Error_t::kNoError;
            }
        case kParamDelay:
            if (newDelaySamples <= m_iMaxDelayLengthInSamples){
                m_iCurDelayInSamples = newDelaySamples;
                for (int c = 0; c < m_iNumChannels; c++){
                    m_pRBDelayLine[c]->setWriteIdx(m_pRBDelayLine[c]->getReadIdx() + m_iCurDelayInSamples);
                }
                return Error_t::kNoError;
            }
            else{
                return Error_t::kFunctionInvalidArgsError;
            }
        default:
            return Error_t::kFunctionInvalidArgsError;
    }

}

float CCombFilterBase::getParam (FilterParam_t eParam) const
{
    switch(eParam){
        case kParamGain:
            return m_fGainValue;
        case kParamDelay:
            return m_fMaxDelayLengthInS;
        default:
            return 0.0f;
    }

}

Error_t CCombFilterBase::process(float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames){


    for (int c = 0; c < m_iNumChannels; c++)
    {
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
