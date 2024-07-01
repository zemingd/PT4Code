n = gets.to_i
t, a = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dif = 100000
result = 0

hs.each.with_index(1) do |h, i|
  tmp = ((t - h * 0.006) - a).abs
  if tmp < dif
    dif = tmp
    result = i
  end
end

puts result