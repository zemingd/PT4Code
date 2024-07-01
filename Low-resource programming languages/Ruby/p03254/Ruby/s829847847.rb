n, x = gets.chop.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)

count = 0
a.sort!.each_with_index do |num, i|
  if i == a.length - 1
    count += 1 if num == x
  else
    break if num > x
    count += 1
    x -= num
  end
end

puts count