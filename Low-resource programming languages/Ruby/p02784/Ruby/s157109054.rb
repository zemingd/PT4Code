h, n = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
if as.inject(:+) >= h
  puts "Yes"
else
  puts "No"
end
