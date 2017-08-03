function plotPeaks(gsrFiltered, minPeakHeight,minPeakDistance)


if(minPeakHeight==0 & minPeakDistance==0)
[maxPeaksValue,maxPeaksIndex]=findpeaks(gsrFiltered);
[minPeaksValue,minPeaksIndex]=findpeaks(gsrFiltered*(-1));
    
else
[maxPeaksValue,maxPeaksIndex]=findpeaks(gsrFiltered,'MinPeakHeight',minPeakHeight,'MinPeakDistance',minPeakDistance);
[minPeaksValue,minPeaksIndex]=findpeaks(gsrFiltered*(-1),'MinPeakHeight',minPeakHeight,'MinPeakDistance',minPeakDistance); 
    
end



figure
hold on 
plot(gsrFiltered,'r')
plot(maxPeaksIndex,gsrFiltered(maxPeaksIndex),'v','MarkerFaceColor','r')
plot(minPeaksIndex,gsrFiltered(minPeaksIndex),'o','MarkerFaceColor','b')


end

