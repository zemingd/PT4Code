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

arys = 0
max_num_ary.each_with_index do |s, i|
  arys += [*1..s].inject(:+).to_f / s.to_f
end
print arys
