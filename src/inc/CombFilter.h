//
//  CombFilter.hpp
//  CombFilter
//
//  Created by JOHN MCNAMARA on 2/12/22.
//

#ifndef CombFilter_h
#define CombFilter_h

#include <stdio.h>
#include <cassert>
#include <algorithm>
#include <cmath>
#include <cstring>
#include "CombFilterIf.h"
#include "RingBuffer.h"


class CCombFilterBase : CCombFilterIf{
public:
    CCombFilterBase(CombFilterType_t e_filterType, int iNumberOfChannels, int iDelaySamples, float fGain){
        m_e_filterType = e_filterType;
        m_iNumberOfChannels = iNumberOfChannels;
        m_iDelaySamples = iDelaySamples;
        m_fGain = fGain;

        m_iBufferSize = setBufferSize();
        m_rbDelayLine = new CRingBuffer<float>(m_iBufferSize);
    }
    //setting delay or gain
    //taking the block size
    //need to define constructors/destructors - look in AudioFile
    

    
    virtual Error_t process(float **ppfInput, float **ppfOutput, int iNumFrames) = 0;

    int setBufferSize(){
        int count = 0;
        int n = m_iDelaySamples;
        if (n && !(n & (n - 1)))
            return n;
        while (n != 0){
            n = n>>1;
            count = count + 1;
        }
        return 1 << count;
    }
    
protected:
    CCombFilterBase();
    virtual ~CCombFilterBase();

    CCombFilterIf::CombFilterType_t m_e_filterType;
    int m_iNumberOfChannels;
    int m_iDelaySamples;
    float m_fGain;
    //define buffer variable here - has to be like the read audio
    int m_iBufferSize;
    CRingBuffer<float> m_rbDelayLine;

    
};

//Initialize new space of either FIR or IIR depending on what type
class CFIRFilter : CCombFilterBase{
public:
    CFIRFilter();
    Error_t process (float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames) override;

protected:
    virtual ~CFIRFilter();
};

class CIIRFilter : CCombFilterBase{
public:
    CIIRFilter();
    Error_t process (float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames) override;

protected:
    virtual ~CIIRFilter();
};


#endif /* CombFilter_hpp */

