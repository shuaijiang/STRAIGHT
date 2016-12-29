clear all;
%%%%%%%%%%%%%%%%%%%%%%%%%
%author: zhaoshuaijiang
%date: 20141223
%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%Settings%%%%%%%%%%%%
opts.F0frameUpdateInterval  = 5;   %frame shift(ms)
opts.spectralUpdateInterval = 5;   %frame shift(ms)
opts.F0searchLowerBound     = 50;  %F0 lower bound
opts.F0searchUpperBound     = 600; %F0 upper bound
fs   = 16000;
RAW_PATH = './raw/';
%WAV_PATH = './wav-10/';
SP_PATH  = './sp/'; mkdir(SP_PATH);
F0_PATH  = './f0/'; mkdir(F0_PATH);
%%%%%%%%%%%%Settings%%%%%%%%%%%%

fns_all = Utils_getFilenames(RAW_PATH, '.raw');
for i = 1:length(fns_all)
    fprintf('Extract the %d th file\n',i);
    x =  Utils_readFeature([RAW_PATH fns_all{i} '.raw'],'int16',1); %int16 not short
    %[x,fs] = wavread([WAV_PATH fns_all{i} '.wav'],'int16');
    [f0,ap]=exstraightsource(x,fs,opts);
    sp = exstraightspec(x,f0,fs,opts);
    sp = sp';
    save([F0_PATH fns_all{i} '.f0'],'f0','-ascii');
    save([SP_PATH fns_all{i} '.sp'],'sp','-ascii');
end

