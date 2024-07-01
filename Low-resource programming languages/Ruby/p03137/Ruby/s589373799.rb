N,M = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)
X.sort!

if N>=M
  puts 0
  exit
end

d = Array.new(M,0)

for i in 0..M-2 do
  d[i] = X[i+1] - X[i]
end

d.sort!

sum = 0

for i in 0..M-N do
  sum += d[i]
end

puts sum
