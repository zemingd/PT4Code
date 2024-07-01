H = gets.to_i

log = Math.log2(H).to_i

result = 0
x = 1
(log+1).times do
  result += x
  x *= 2
end

puts result