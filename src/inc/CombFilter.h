#if !defined(__CombFilter_hdr__)
#define __CombFilter_hdr__

#include <stdio.h>
#include <cassert>
#include <algorithm>
#include <cmath>
#include <cstring>
#include "CombFilterIf.h"
#include "RingBuffer.h"
#include "ErrorDef.h"

class CCombFilterBase: public CCombFilterIf{
public:
//    CCombFilterBase(int iNumberOfChannels, int iDelaySamples, float fGain, int iFilterType){
//        m_iNumberOfChannels = iNumberOfChannels;
//        m_iMaxDelayLengthInSamples = iDelaySamples;
//        m_iBufferSize = setBufferSize();
//        m_pRBDelayLine = new CRingBuffer<float>* [iNumberOfChannels];
//
//        for (int i = 0; i < m_iNumberOfChannels; i++){
//            m_pRBDelayLine[i] = new CRingBuffer<float>(m_iBufferSize);
//        }
//
//        m_fGain = fGain;
//        m_iFilterType = iFilterType;
//    }

//    Error_t init(int iNumberOfChannels);
    CCombFilterBase(CombFilterType_t eFilterType, float fMaxDelayS, float fSampleRate, int iNumChannels);
    virtual ~CCombFilterBase();

    Error_t process(float **ppfInput, float **ppfOutput, int iNumFrames);

    //Create a buffer size that is the smallest power of 2 greater than the delay length in samples.
    int setBufferSize(){
        int count = 0;
        int n = m_iMaxDelayLengthInSamples;
        while (n != 0){
            n = n>>1;
            count = count + 1;
        }
        return 1 << count;
    }
    
    Error_t init (CombFilterType_t eFilterType, float fMaxDelayLengthInS, float fSampleRateInHz, int iNumChannels);
    
    
    /*! sets a comb filter parameter
    \param eParam what parameter (see ::FilterParam_t)
    \param fParamValue value of the parameter
    \return Error_t
    */
    Error_t setParam (FilterParam_t eParam, float fParamValue);
    
    /*! return the value of the specified parameter
    \param eParam
    \return float
    */
    float   getParam (FilterParam_t eParam) const;

protected:
//    virtual ~CCombFilterBase();
//    int m_iNumberOfChannels;
//    int m_iMaxDelayLengthInSamples;
    int m_iBufferSize;
    CRingBuffer<float> **m_pRBDelayLine= 0;
    CombFilterType_t m_eFilterType;
    float           m_fSampleRate;
    float           m_fMaxDelayLengthInS;
    int             m_iMaxDelayLengthInSamples;
    int             m_iCurDelayInSamples;
    float           m_fGainValue;
    int             m_iNumChannels;
//    float m_fGain;
//    int m_iFilterType; //0 for FIR, 1 for IIR


};



#endif //__CombFilter_hdr__

