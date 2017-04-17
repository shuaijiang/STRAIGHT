STRAIGHT
========

This is a speech analysis, modification and synthesis system

# Usage
## exstraightsource
   Source information extraction for STRAIGHT
   
   [f0raw,ap,analysisParams]=exstraightsource(x,fs,optionalParams)
   
   Input parameters
   
   x   : input signal. if it is multi channel, only the first channel is used
   
   fs  : sampling frequency (Hz)
   
   optionalParams : Optional parameters for analysis
   
   Output parameters
   
   f0raw   : fundamental frequency (Hz)
   
   ap  : amount of aperiodic component in the time frequency representation
       : represented in dB
   
   analysisParams : Analysis parameters actually used

   Usage:
   
   Case 1: The simplest method
   
   [f0raw,ap]=exstraightsource(x,fs); 
   
   Case 2: You can get to know what parameters were used.
   
   [f0raw,ap,analysisParams]=exstraightsource(x,fs);
   
   CAse 3: You can have full control of STRAIGHT synthesis.
       Please use case 2 to find desired parameters to modify.
   
   [f0raw,ap,analysisParams]=exstraightsource(x,fs,optionalParams);

## exstraightspec
   Spectral information extraction for STRAIGHT
   
   [n3sgram,nalysisParamsSp]=exstraightspec(x,f0raw,fs,optionalParamsSP)
   
   Input parameters
   
   x   : input signal. only the first channel is analyzed
   
   f0raw   : fundamental frequency (Hz) in 1 ms temporal resolution
           : set 0 for aperiodic part
   
   fs  : sampling frequency (Hz)
   
   optionalParamsSP : spectrum analysis parameters
   
   Output parameters
   
   n3sgram : Smoothed time frequency representation (spectrogram)
   
   analysisParamsSp :  Actually used parameters

   Usage:
   
   Case 1: The simplest method
   
   n3sgram = exstraightspec(x,f0raw,fs); 
   
   Case 2: You can get to know what parameters were used.
   
   [n3sgram,analysisParamsSp]=exstraightspec(x,f0raw,fs);
   
   CAse 3: You can have full control of STRAIGHT synthesis.
       Please use case 2 to find desired parameters to modify.
   
   [n3sgram,analysisParamsSp]=exstraightspec(x,f0raw,fs,optionalParamsSP);
   
## exstraightsynth
   Synthesis using STRAIGHT parameters
   
   [sy,prmS] = exstraightsynth(f0raw,n3sgram,ap,fs,optionalParamsS)
   
   Input parameters
   
   f0raw   : fundamental frequency (Hz) 
   
   n3sgram : STRAIGHT spectrogram (in absolute value)
   
   ap      : aperiodic component (dB re. to total power)
   
   fs      : sampling frequency (Hz)
   
   optionalParamsS : optional synthesis parameters
   
   Output parameters
   
   sy      : synthesized speech
   
   prmS    : Actually used synthesis parameters

   Usage:
   
   Case 1: The simplest method
   
   sy = exstraightsynth(f0raw,n3sgram,ap,fs); 
   
   Case 2: You can get to know what parameters were used.
   
   [sy,prmS] = exstraightsynth(f0raw,n3sgram,ap,fs);
   
   Case 3: You can have full control of STRAIGHT synthesis.
       Please use case 2 to find desired parameters to modify.
   
   [sy,prmS] = exstraightsynth(f0raw,n3sgram,ap,fs,optionalParamsS);
   
# Reference
http://www.wakayama-u.ac.jp/~kawahara/STRAIGHTadv/index_e.html
