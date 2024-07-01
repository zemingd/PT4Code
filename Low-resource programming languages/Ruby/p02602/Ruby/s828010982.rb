n,k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
basic_sum = 1
arr[0,k].each {|x| basic_sum *= x}
# p basic_sum
i = 0
plas_1_sum = 1
while i < arr.size - k
  # p arr[i+1,k]
  arr[1+i,k].each {|x| plas_1_sum *= x}
  # p plas_1_sum
  if basic_sum < plas_1_sum
    puts "Yes"
  else
    puts "No"
  end
  basic_sum = plas_1_sum
  plas_1_sum = 1
  i += 1
end