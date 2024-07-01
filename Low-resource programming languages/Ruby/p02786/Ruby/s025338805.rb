h = gets.chomp.to_i
x = 1
1.upto(40) do |i|
  x = 2**i if 2**i <= h
  break if 2**i > h
end
print 2*x-1