S = gets.chomp

L = S.length
min =10**9

for i in 0..S.length-3 do
  a = 0
  for j in 0..2 do
    a += S[i+j].to_i * 10 ** (2-j)
  end

  tmp = (a - 753).abs
  min = tmp if min > tmp

end

puts min
