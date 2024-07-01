K = gets.chomp.to_i
odd_num = 0
even_num = 0
if K%2 == 0
  odd_num = even_num = K/2
else
  odd_num = K/2 +1
  even_num = K/2
end
print("#{odd_num*even_num}")