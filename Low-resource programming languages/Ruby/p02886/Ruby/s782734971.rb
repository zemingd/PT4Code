n = gets.to_i
d = gets.split.map(&:to_i)

sum = 0
n.times do |i|
  (i+1).upto(n-1) do |j|
    sum += d[i] * d[j]
  end
end

puts sum
