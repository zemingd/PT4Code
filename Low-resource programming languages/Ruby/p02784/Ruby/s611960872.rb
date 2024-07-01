h,n=gets.chomp.split(" ").map(&:to_i);
a = gets.chomp.split(" ").map(&:to_i);

atk = a.inject(:+)
if h <= atk
  print 'Yes'
else
  print 'No'
end