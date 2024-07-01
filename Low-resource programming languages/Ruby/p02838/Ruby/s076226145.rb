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
  index = 0
  s.to_i.to_s(2).reverse.chars.each do |bit, i|
    bits[index] += 1 if bit == ONE
    index +=1
  end
end

s = N/2
bits.each_with_index do |val, i|
  ans = (ans + ary[i] * (N - val) * val)%MOD
end

puts ans
