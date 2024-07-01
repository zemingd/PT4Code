N,M=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
total = a.reduce{|i,j| i+j}
 
a.sort!
 
if a.reverse[M-1] < total/(4*M).to_f
  puts "No"
else
  puts "Yes"
end
