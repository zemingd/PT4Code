N, K = gets.split.map(&:to_i)

h=[]

N.times do |i|
  h[i] = gets.to_i
end

h.sort!

min = 10**9

for i in 0..N-K do
  tmp = h[i+K-1] - h[i]
  min = tmp if min > tmp
end

puts min
