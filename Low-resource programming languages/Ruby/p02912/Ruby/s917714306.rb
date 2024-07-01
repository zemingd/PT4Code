n,m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i).sort_by{|a| -a}

while m > 0 do
  m -= 1
  max = a_arr.shift
  max_2 = max / 2
  index = a_arr.bsearch_index{|a| a < max_2} || a_arr.length
  # indexよりも前の要素は(割引券がある限り)割引対象になる
  #t = m >= index ? index : m
  #(0..(t-1)).each do |i|
  #  a_arr[i] /= 2
  #end
  #m -= t
  #a_arr << max_2
  #a_arr = a_arr.sort_by{|a| -a}
  a_arr.insert(index, max_2)
end

puts a_arr.inject(&:+)


