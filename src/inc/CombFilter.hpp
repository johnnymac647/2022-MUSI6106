//
//  CombFilter.hpp
//  MUSI6106
//
//  Created by JOHN MCNAMARA on 2/10/22.
//

#ifndef CombFilter_hpp
#define CombFilter_hpp

#include <stdio.h>
#include <cassert>
#include <algorithm>
#include <cmath>
#include <cstring>
#include <RingBuffer.h>

template <class T>
class CCombFilter{
    public:
    explicit CCombFilter(){

    };
    
    virtual ~CCombFilter(){

    }
    
    void applyDelay(CRingBuffer<T> x, CRingBuffer<T> y){
        
    }
    
    private:
    int m_iDelayLengthSamps;
    CRingBuffer<T> m_XBuffer = new CRingBuffer<T>(2*m_iDelayLengthSamps); //buffer to hold the original, undelayed signal
    CRingBuffer<T> m_YBuffer = new CRingBuffer<T>(2*m_iDelayLengthSamps); //buffer to hold the final signal that we will eventually write into our wav file
/*
    Things we're going to need:
        Delay line
        Delay frequency
        g weighting factor
        function to merge the delay line with the original signal
 
 */
    
};

class CFIRFilter : public CCombFilter<class T>{
    /*
     x=zeros(100,1);x(1)=1; % unit impulse signal of length 100
     g=0.5;
     Delayline=zeros(10,1);% memory allocation for length 10
     for n=1:length(x);
         y(n)=x(n)+g*Delayline(10);
         Delayline=[x(n);Delayline(1:10-1)];
     end;
     */
    
    
};

class CIIRFilter : public CCombFilter<class T>{
    /*
     x=zeros(100,1);x(1)=1; % unit impulse signal of length 100
     g=0.5;
     Delayline=zeros(10,1); % memory allocation for length 10
     for n=1:length(x);
         y(n)=x(n)+g*Delayline(10);
         Delayline=[y(n);Delayline(1:10-1)];
     end;
     */
    
};

#endif /* CombFilter_hpp */
