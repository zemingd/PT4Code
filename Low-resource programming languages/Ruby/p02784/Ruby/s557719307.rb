h,n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = a.inject(:+)
if h <= x
  puts "Yes"
else
  puts "No"
end