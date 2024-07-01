n = gets.chomp("").to_i
d = gets.split(" ").map(&:to_i)

sum = 0
(n-1).times do |i|
  (n-i-1).times do |t|
    sum += d[i] * d[t+1+i]
  end
end

puts sum
