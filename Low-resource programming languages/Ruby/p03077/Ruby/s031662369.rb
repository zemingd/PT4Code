N = gets.chomp.to_i
A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i
E = gets.chomp.to_i

carry_count = [A, B, C, D, E].min
#
# sum = 0
# 5.upto(N+5) do |i|
#   sum += carry_count
#   if sum >= N
#     puts i
#     exit
#   end
# end

if N <= carry_count
  p 5
else
  if N % carry_count == 0
    p N / carry_count + 4
  else
    p N / carry_count + 5
  end
end
