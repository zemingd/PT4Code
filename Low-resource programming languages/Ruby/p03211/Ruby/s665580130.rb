S = gets.chomp

min = 753
for i in 0..S.size-3 do
  num = S[i..i+2].to_i
  abs = (753-num).abs
  min =  abs < min ? abs : min
end
p min