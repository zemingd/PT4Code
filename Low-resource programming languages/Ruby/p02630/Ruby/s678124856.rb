n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
h = Array.new(10**5,0)
sum = 0
a.each do |num|
  h[num] += 1
  sum += num
end

q = gets.chomp.to_i

q.times do
  b,c = gets.chomp.split.map(&:to_i)
  sum += (c-b)*h[b]
  puts sum 
  h[c] += h[b]
  h[b] = 0
end