n,k=gets.chomp.split(" ").map { |e| e.to_i  }

h = []

n.times do |i|
  h[i] = gets.chomp.to_i
end

h = h.sort

ans = 100000000000

for i in 0..n-k do
  temp = h[i+k-1] - h[i]
  ans = temp > ans ? ans : temp
end

puts ans
