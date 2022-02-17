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
    CCombFilterBase();
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

protected:
//    virtual ~CCombFilterBase();
//    int m_iNumberOfChannels;
//    int m_iMaxDelayLengthInSamples;
    int m_iBufferSize;
    CRingBuffer<float> **m_pRBDelayLine= 0;
//    float m_fGain;
//    int m_iFilterType; //0 for FIR, 1 for IIR


};



#endif //__CombFilter_hdr__

