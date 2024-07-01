require 'set'
ACGT_set = Set["A","C","G","T"]


s = gets.chomp.split("")
n = s.count
index_arr = (0..(n-1)).to_a
index_arr_two = (0..(n-1)).to_a
count_arr = []
arr = []
index_arr.each do |i1|
  index_arr_two.each do |i2|
    arr <<  s[i1..i2]
  end
end

arr.each do |v|
  v_set = Set.new(v)
  if v_set <= ACGT_set
    count_arr << v.count
  end
end

p count_arr.max
