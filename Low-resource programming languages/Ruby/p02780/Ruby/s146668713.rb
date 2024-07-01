n, k = gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split(' ').map(&:to_i)

max_num_ary = []
max_num = 0
strs.each_cons(k) do |str|
  ary_sum = str.inject(:+)
  next if ary_sum < max_num
  max_num = ary_sum
  max_num_ary = str
end
print (max_num_ary.inject(:+) + k).to_f / 2