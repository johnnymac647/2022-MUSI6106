
// standard headers

// project headers
#include "MUSI6106Config.h"

#include "ErrorDef.h"
#include "Util.h"

#include "CombFilterIf.h"
#include "CombFilter.h"
#include "RingBuffer.h"




static const char*  kCMyProjectBuildDate = __DATE__;


CCombFilterIf::CCombFilterIf () :
    m_bIsInitialized(false),
    m_pCCombFilter(0),
    m_fSampleRate(44100)
{
    // this should never hurt
    this->reset ();
}

const int  CCombFilterIf::getVersion (const Version_t eVersionIdx)
{
    int iVersion = 0;

    switch (eVersionIdx)
    {
    case kMajor:
        iVersion    = MUSI6106_VERSION_MAJOR; 
        break;
    case kMinor:
        iVersion    = MUSI6106_VERSION_MINOR; 
        break;
    case kPatch:
        iVersion    = MUSI6106_VERSION_PATCH; 
        break;
    case kNumVersionInts:
        iVersion    = -1;
        break;
    }

    return iVersion;
}
const char*  CCombFilterIf::getBuildDate ()
{
    return kCMyProjectBuildDate;
}

Error_t CCombFilterIf::create (CCombFilterIf*& pCCombFilter)
{
    pCCombFilter = new CCombFilterIf();
    if (!pCCombFilter)
        return Error_t::kMemError;
    return Error_t::kNoError;
}

Error_t CCombFilterIf::destroy (CCombFilterIf*& pCCombFilter)
{
    delete pCCombFilter;
    pCCombFilter  = 0;
    return Error_t::kNoError;
}

Error_t CCombFilterIf::init (CombFilterType_t eFilterType, float fMaxDelayLengthInS, float fSampleRateInHz, int iNumChannels)
{

    m_eFilterType = eFilterType;
    m_fSampleRate = fSampleRateInHz;
    setParam(kParamDelay, fMaxDelayLengthInS);
    m_iNumChannels = iNumChannels;

    m_pCCombFilter = new CCombFilterBase(m_iNumChannels);
    return Error_t::kNoError;
}

Error_t CCombFilterIf::reset ()
{
    init(m_eFilterType, 1.0, 44100, 1);
    return Error_t::kNoError;
}

Error_t CCombFilterIf::process (float **ppfInputBuffer, float **ppfOutputBuffer, int iNumberOfFrames)
{
    return m_pCCombFilter->process(ppfInputBuffer, ppfOutputBuffer, iNumberOfFrames);
}

Error_t CCombFilterIf::setParam (FilterParam_t eParam, float fParamValue)
{
    switch(eParam){
        case kParamGain:
            m_fGainValue = fParamValue;
            return Error_t::kNoError;
        case kParamDelay:
            m_fMaxDelayLengthInS = fParamValue;
            m_iMaxDelayLengthInSamples = static_cast<int>(m_fMaxDelayLengthInS * m_fSampleRate);
            return Error_t::kNoError;
        default:
            return Error_t::kFunctionInvalidArgsError;
    }

}

float CCombFilterIf::getParam (FilterParam_t eParam) const
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
