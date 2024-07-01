n, k = gets.split().map(&:to_f)

sum = 0

(1..n).each do |i|
  t = Math.log(k/i, 2).ceil
  t = 0 if t < 0
  sum += (1/n * (1/2.0)**t)
end

puts sum