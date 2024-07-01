MOD = 10**9 + 7
N = gets.chomp.to_i
ans = 0
ary = []
60.times do |i|
  ary << (1 << i)%MOD
end
ONE = '1'.freeze
bits = Array.new(60, 0)
gets.chomp.split.each do |s|
  s.to_i.to_s(2).reverse.chars.each_with_index do |bit, i|
    bits[i] += 1 if bit == ONE
  end
end

s = N/2
p bits
p ary
bits.each_with_index do |val, i|
  ans = (ans + ary[i] * (N - val) * val)%MOD
end

puts ans