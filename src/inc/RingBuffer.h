#if !defined(__RingBuffer_hdr__)
#define __RingBuffer_hdr__

#include <cassert>
#include <algorithm>
#include <cmath>
#include <cstring>

/*! \brief implement a circular buffer of type T
*/
template <class T>
class CRingBuffer
{
public:
    explicit CRingBuffer(int iBufferLengthInSamples) :
        m_iBuffLength(iBufferLengthInSamples),
        m_iReadIdx(0),
        m_iWriteIdx(0),
        m_ptBuff(0)
    {
        assert(iBufferLengthInSamples > 0);

        m_ptBuff = new T[m_iBuffLength];
        reset();
    }

    virtual ~CRingBuffer()
    {
        delete[] m_ptBuff;
        m_ptBuff = 0;
    }

    /*! add a new value of type T to write index and increment write index
    \param tNewValue the new value
    \return void
    */
    void putPostInc(T tNewValue)
    {
        put(tNewValue);
        incIdx(m_iWriteIdx);
    }

    /*! add a new value of type T to write index
    \param tNewValue the new value
    \return void
    */
    void put(T tNewValue)
    {
        m_ptBuff[m_iWriteIdx] = tNewValue;
    }

    /*! return the value at the current read index and increment the read pointer
    \return float the value from the read index
    */
    T getPostInc()
    {
        T tValue = get();
        incIdx(m_iReadIdx);
        return tValue;
    }

    /*! return the value at the current read index
    \return float the value from the read index
    */
    T get(float fOffset = 0) const
    {
//        return m_ptBuff[m_iReadIdx];
        float f_between, fIdx;
        f_between = modf(fOffset, &fIdx);
        int i_floor = static_cast<int>(fIdx);
        int i_ceil = i_floor + 1;

        incIdx(i_floor, 0);
        incIdx(i_ceil, 0);

        float f_interp = (1-f_between)*m_ptBuff[i_floor] + f_between*m_ptBuff[i_ceil];
        return f_interp;

    }

    void testFloatGet(){
        //create test index values
        float testIndicies[] = {-1000.23, 0.0, 5.0,2.4, 2.41, 12347890.1234};
        int arrSize = *(&testIndicies + 1) - testIndicies;
        for( int i = 0; i < arrSize; i++){
            std::cout << "Value at of the Ring Buffer at index " << testIndicies[i] << " is " << get(testIndicies[i]);
//            std::cout <<
        }
    }

    /*! set buffer content and indices to 0
    \return void
    */
    void reset()
    {
        std::memset (m_ptBuff, 0, sizeof(T)*m_iBuffLength);
        m_iReadIdx  = 0;
        m_iWriteIdx = 0;
    }

    /*! return the current index for writing/put
    \return int
    */
    int getWriteIdx() const
    {
        return m_iWriteIdx;
    }

    /*! move the write index to a new position
    \param iNewWriteIdx: new position
    \return void
    */
    void setWriteIdx(int iNewWriteIdx)
    {
        incIdx(m_iWriteIdx, iNewWriteIdx - m_iWriteIdx);
    }

    /*! return the current index for reading/get
    \return int
    */
    int getReadIdx() const
    {
        return m_iReadIdx;
    }

    /*! move the read index to a new position
    \param iNewReadIdx: new position
    \return void
    */
    void setReadIdx(int iNewReadIdx)
    {
        incIdx(m_iReadIdx, iNewReadIdx - m_iReadIdx);
    }

    /*! returns the number of values currently buffered (note: 0 could also mean the buffer is full!)
    \return int
    */
    int getNumValuesInBuffer() const
    {
        return (m_iWriteIdx - m_iReadIdx + m_iBuffLength) % m_iBuffLength;
    }

    /*! returns the length of the internal buffer
    \return int
    */
    int getLength() const
    {
        return m_iBuffLength;
    }
private:
    CRingBuffer();
    CRingBuffer(const CRingBuffer& that);

    void incIdx(int& iIdx, int iOffset = 1)
    {
        while ((iIdx + iOffset) < 0)
        {
            // avoid negative buffer indices
            iOffset += m_iBuffLength;
        }
        iIdx = (iIdx + iOffset) % m_iBuffLength;
    };

    int m_iBuffLength,      //!< length of the internal buffer
        m_iReadIdx,         //!< current read index
        m_iWriteIdx;        //!< current write index

    float m_fReadIdx;       //!< allow the read index to be a float. Return the interpolation between adjacent values

    T* m_ptBuff;            //!< data buffer
};
#endif // __RingBuffer_hdr__
