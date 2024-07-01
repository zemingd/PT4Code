n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

b = b.push(0)

cnt = 0
sft = 0

(n+1).times do |i|
  ax = a[i] + sft
  cnt -= sft
  sft = 0
  sft = ax - b[i]
  sft = 0 if sft > 0    
  cnt += b[i] + sft
end

puts cnt