N = gets.to_i
ary = gets.split.map(&:to_i)
total = 0

ary.each do |elm|
  total += elm
end
ave = total / N

result = 0
ary.each do |elm|
  result += (ave - elm) ** 2
end
puts result
