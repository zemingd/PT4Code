n = gets.chomp.to_i
arr = [*1..n]
han = n / 2
ans = 0
# if n % 2 == 0
#     mae = ((1 + han) * han) / 2
#     (han+1..n).each do |i|
#         aikata = n + 1 - i
#         iko = i % aikata
#         ans += iko
#     end
# elsif n % 2 != 0
#     mae = ((1 + han) * han) / 2
#     (han+2..n).each do |i|
#         aikata = n + 1 - i
#         iko = i % aikata
#         ans += iko
#     end
# end
# p mae
# puts ans + mae
saigo = n- 1
puts (1 + saigo) * saigo / 2