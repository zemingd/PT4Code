MOD = 10**9 + 7
N = gets.chomp.to_i
ans = 0

ONE = '1'.freeze
bits = Array.new(60, 0)

gets.chomp.split.each do |s|
  s.to_i.to_s(2).chars.reverse.each_with_index do |bit, i|
    bits[i] += 1 if bit == ONE
  end
end

s = N/2
bits.each_with_index do |val, i|
  ans = (ans + (1 << i)%MOD * (N - val) * val)%MOD
end

puts ans