function filt= filter(steeringAngles)
sampleRate = 20;
cutOffFreq = 3.2;
filterOrder =2;
[b, a] = butter(filterOrder, cutOffFreq/(sampleRate/2));
steeringAngles = filtfilt(b, a, steeringAngles);

filt = steeringAngles;
end

