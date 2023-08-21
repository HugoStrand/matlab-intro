
function s = bubble_sort(l)
   s = l;
   %n_elements = length(s)
   %disp("The length of the vector l is " + num2str(n_elements))
  
   for j = 1:length(s)-1
   for i = 1:length(s)-1
      %disp("Pair (before): " + num2str(s(i)) + ", " + num2str(s(i+1)) )
      if s(i) > s(i+1)
         tmp = s(i);
         s(i) = s(i+1);
         s(i+1) = tmp;
      end
      %disp("Pair  (after): " + num2str(s(i)) + ", " + num2str(s(i+1)) )
   end
   end
   %disp("Result:")
   %s
end