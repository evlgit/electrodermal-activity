
peaksTotal =zeros();
peaksAmplitudeDiff =zeros();
averagePositiveComponent=zeros();
averageNegativeComponent=zeros();

for i = 1:size(gsrFiltered,2)
  x=(gsrFiltered(:,i));
  y=(gsrFiltered(:,i));
  
  averagePositiveComponent(i)=abs(mean(x(x>0)));
  averageNegativeComponent(i)=abs(mean(y(y<0)));
  
  if(isnan(averagePositiveComponent(i)))
      averagePositiveComponent(i)=averageNegativeComponent(i);
  end
    
   if(isnan(averageNegativeComponent(i)))
      averageNegativeComponent(i)=averagePositiveComponent(i);
  end
  
  
  peaksTotal(i)=mainPeaks(gsrFiltered(:,i),0,0.01,0.01,10);% boundary flag,upperBoundary,lowerBoundary,timegap
  peaksAmplitudeDiff(i)=getPeakAmplitudeDiff(gsrFiltered(:,i));

end
clear i
clear x
clear y