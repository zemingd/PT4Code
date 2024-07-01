(x, n) = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)

d = [*1..10*10] - p

min = 10**10
diff = 10**10

d.each do |i|
  if diff > (i - x).abs
    diff = (i - x).abs
    min = i
  elsif diff == (i - x).abs
    min = i if min > i
  end

  break if x + diff < i
end

puts min
