n = gets.to_i
an = gets.strip.split.map(&:to_i).sort

ans = 10 ** 12
sum = an.inject(:+)
snuke = 0
(n - 1).times do |i|
  snuke += an[i]
  ans = [ans, (snuke - (sum - snuke)).abs].min
end

puts ans
