n = gets.chomp.to_i
h = Array.new(10**5,0)
sum = 0

gets.chomp.split.each do |num|
  num = num.to_i
  h[num-1] += 1
  sum += num
end

q = gets.chomp.to_i

q.times do
  b,c = gets.chomp.split.map(&:to_i)
  b -= 1
  c -= 1
  sum += (c-b)*h[b]
  puts sum 
  h[c] += h[b]
  h[b] = 0
end