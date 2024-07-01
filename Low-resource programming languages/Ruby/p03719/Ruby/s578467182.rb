a, b, c = gets.chomp.split(" ").map(&:to_i);
if c >= a && c <= b then
print 'Yes'
else
print 'No'
end