H, N= gets.chop.split.map(&:to_i)
A = gets.split.map(&:to_i)
 
if H <= A.inject(:+)
  puts "Yes"
else
  puts "No