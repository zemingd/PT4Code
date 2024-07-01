n, x = gets.chop.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)

count = 0
a.sort!.each do |num|
  break if num > x
  count += 1
  x -= num
end

puts count