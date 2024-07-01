n, k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map{|i| (i.to_f+1)/2.0}

max_num = arr[0...k].reduce(:+)
i_num = max_num

for i in 0...n-k do
  i_num =i_num - arr[i] + arr[i+k]
  if i_num > max_num
    max_num = i_num
  end
end

print(max_num)
