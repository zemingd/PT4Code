n = gets.to_i
d = gets.split("\s").map(&:to_i)
result = 0

n.times do |i|
  (i+1).step(n-1) do |j|
    result += d[i]*d[j]
  end
end

puts result