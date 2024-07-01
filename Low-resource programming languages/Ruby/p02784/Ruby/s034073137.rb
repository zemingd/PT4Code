h, n = gets.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)

n

if h <= a.sum
  puts "Yes"
else
  puts "No"
end