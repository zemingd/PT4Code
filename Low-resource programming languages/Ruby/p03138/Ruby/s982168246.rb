N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

t = Array.new(40, 0)
A.each do |a|
  a.to_s(2).split('').reverse!.each.with_index do |x, i|
    t[i] += x.to_i
  end
end

x    = 0
b    = 1
half = (N + 1) / 2
t.each do |i|
  if i < half && (x | b) <= K
    x |= b
  end 
  b <<= 1
end

puts A.inject(0) {|tot, a| tot + (x ^ a)}
