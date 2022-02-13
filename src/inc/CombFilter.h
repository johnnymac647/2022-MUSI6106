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
    explicit CCombFilterBase(int iNumberOfChannels){
        m_iNumberOfChannels = iNumberOfChannels;
        m_iBufferSize = setBufferSize();
        m_pRBDelayLine = new CRingBuffer<float>(m_iBufferSize);
    }

    Error_t init(int iNumberOfChannels);

    Error_t process(float **ppfInput, float **ppfOutput, int iNumFrames);

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
    int m_iNumberOfChannels;
    //define buffer variable here - has to be like the read audio
    int m_iBufferSize;
    CRingBuffer<float>* m_pRBDelayLine= 0;

    
};

#endif /* CombFilter_hpp */

