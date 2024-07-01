numbers = gets.chomp
n = numbers.split()[0].to_i
k = numbers.split()[1].to_i
p = 0
k_tmp1 = k
k_tmp2 = n
i = 1
while k_tmp2 >= 1
  if k_tmp1 < k_tmp2
    p += (k_tmp2-k_tmp1)/(i*n.to_f)
    k_tmp2 = k_tmp1
  end
  i *= 2
  k_tmp1 = k/i
end
puts p
