h, _ = gets.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)


if h <= a.inject(:+)
  puts "Yes"
else
  puts "No"
end