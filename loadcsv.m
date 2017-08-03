%load must contain only numbers
files = dir('*.csv');
for i=1:length(files)
    eval(['load ' files(i).name ' -ascii']);
end
clear i
%clear Time
clear files
myvars = who;

%load Time.csv
	

