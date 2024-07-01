n, l = gets.split.map(&:to_i)
l_arr = []
abs_arr = []

n.times{
l_arr <<  l
l += 1
}
l_arr_sum = l_arr.sum

l_arr.each { |i|
abs_arr << i.abs
}
abs_arr.sort!

if l_arr_sum  >= 0
  p l_arr_sum  - abs_arr[0]
else
  p l_arr_sum  + abs_arr[0]
end
