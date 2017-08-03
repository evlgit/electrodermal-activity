function totalPeaksOut=mainPeaks(gsrFiltered,boundaryFlag,upperBoundary,lowerBoundary,peakDistance)


positivePeaks=[];
negativePeaks=[];






for ip=1:2
if(ip==1)
if(boundaryFlag==0)
positivePeaks=findpeaks(gsrFiltered);
positivePeaks=size(positivePeaks);
positivePeaks=positivePeaks(1);
elseif(boundaryFlag==1)
positivePeaks=findpeaks(gsrFiltered,'MinPeakHeight',upperBoundary,'MinPeakDistance',peakDistance);
positivePeaks=size(positivePeaks);
positivePeaks=positivePeaks(1);    
end


elseif(ip==2)

if(boundaryFlag==0)
negativePeaks=findpeaks(gsrFiltered*(-1));
negativePeaks=size(negativePeaks);
negativePeaks=negativePeaks(1);
elseif(boundaryFlag==1)
negativePeaks=findpeaks(gsrFiltered*(-1),'MinPeakHeight',lowerBoundary,'MinPeakDistance',peakDistance);
negativePeaks=size(negativePeaks);
negativePeaks=negativePeaks(1);
    
end

   
end

totalPeaksOut=positivePeaks+negativePeaks;

end




end