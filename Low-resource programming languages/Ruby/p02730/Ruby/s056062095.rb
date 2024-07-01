s = gets.chomp
l = s.size
s_arr = s.split('')

n_1_arr = s_arr[0...(l-1)/2]
n_3_arr = s_arr[(l+3)/2-1..l]

if s_arr == s_arr.reverse && n_1_arr == n_1_arr.reverse && n_3_arr == n_3_arr.reverse
  print('Yes')
else
  print('No')
end