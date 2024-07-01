numbers = gets.chomp
n = numbers.split()[0].to_i
k = numbers.split()[1].to_i
p = 0
i = 1
k_tmp2 = n+1
k_tmp1 = (k.to_f/i).ceil
while k_tmp2 > 1
  if k_tmp1 < k_tmp2
    p += (k_tmp2-k_tmp1).to_f/(i*n)
    k_tmp2 = k_tmp1
  end
  i *= 2
  k_tmp1 = (k.to_f/i).ceil
end
puts p
