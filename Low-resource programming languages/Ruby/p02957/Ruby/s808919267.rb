a, b = gets.split.map(&:to_i)

max = a > b ? a : b
res = 0
(1..max).each do |i|
  if (a - i).abs ==  (b - i).abs
    res = i
    break
  end
end

if res.zero?
  puts 'IMPPOSSIBLE'
else
  puts res
end