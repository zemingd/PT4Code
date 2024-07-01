n, k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)

max_num = -1
max_arr = []
for i in 0..n-k do
  i_arr = arr[i...i+k]
  i_num = i_arr.reduce(:+)
  if i_num > max_num
    max_num = i_num
    max_arr = i_arr
  end
end
max_arr = max_arr.reduce(0){|res, i| res + [*1..i].reduce(:+).to_f.round(12)/i}
printf("%.12f", max_arr)