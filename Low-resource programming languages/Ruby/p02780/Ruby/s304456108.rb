n, k = gets.split().map(&:to_i)
p = gets.split().map(&:to_i)

sum = 0

(k-1..n-1).each do |i|
  tmp = 0
  k.times do |j|
    tmp += (p[i-j] * 0.5 + 0.5)
  end
  sum = [sum, tmp].max
end

puts sum