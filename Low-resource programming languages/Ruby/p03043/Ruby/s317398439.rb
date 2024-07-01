n, k = gets.chomp.split.map(&:to_i)

ary = 0
(1..n).each do |i|
  cnt = i
  s = 0
  while cnt < k
    cnt *= 2
    s += 1
  end
  ary += (1/n.to_f) * 1/2**s 
end
puts ary