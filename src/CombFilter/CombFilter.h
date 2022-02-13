//
//  CombFilter.hpp
//  CombFilter
//
//  Created by JOHN MCNAMARA on 2/12/22.
//

#ifndef CombFilter_hpp
#define CombFilter_hpp

#include <stdio.h>
#include <cassert>
#include <algorithm>
#include <cmath>
#include <cstring>
#include "CombFilterIf.h"
#include "RingBuffer.h"


class CCombFilterBase : CCombFilterIf{
public:
    CCombFilterBase(int iBufferSize, int iNumberOfChannels){
//        CRingBuffer<float>* m_pCInputBuff = 0;
//        CRingBuffer<float>* m_pCOutputBuff = 0;
        m_pCInputBuff = new CRingBuffer<float>(iBufferSize);
        m_pCOutputBuff = new CRingBuffer<float>(iBufferSize);
        
//        m_ppfInputBuffer = new CRingBuffer<float>(iBufferSize);
    }
    //seting delay or gain
    //taking the block size
    //need to define constructors/destructors - look in AudioFile
    
    CRingBuffer<float>* m_pCInputBuff;
    CRingBuffer<float>* m_pCOutputBuff;
    
    float** m_ppfInputBuffer;
    float** m_ppfOutputBuffer;
    
protected:
    CCombFilterBase();
    virtual ~CCombFilterBase();
    
};

//Initialize new space of either FIR or IIR depending on what type


class CFIRFilter : CCombFilterBase{
public:

    
    Error_t process (float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames){
        return Error_t::kNoError;
    }
};

class CIIRFilter : CCombFilterBase{
public:
    Error_t process (float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames){
        return Error_t::kNoError;
    }
};

#endif /* CombFilter_hpp */

