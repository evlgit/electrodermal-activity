all_variables = who('X*');
num = numel(all_variables);
a = zeros(num, 1);
gsrFiltered=[];
for i = 1:num
    %bla=filterButter(eval(all_variables{i}));
   gsrFiltered=[gsrFiltered,filterButter((eval(all_variables{i})))];
end
clear i
clear a
clear num
clear all_variables
