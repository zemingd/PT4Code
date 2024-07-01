MOD = 10**9 + 7
N = gets.chomp.to_i
ans = 0

ONE = '1'.freeze
bits = Array.new(60, 0)

gets.chomp.split.each do |s|
  index = 0
  xxxx = s.to_i
  while xxxx > 0
    xxxx%2 == 1
    bits[index] += 1
    xxxx = xxxx << 1
    index += 1
  end
end

s = N/2
bits.each_with_index do |val, i|
  ans = (ans + (1 << i)%MOD * (N - val) * val)%MOD
end

puts ans