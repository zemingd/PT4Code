n, l = gets.split.map(&:to_i)
l_arr = []
abs_arr = []


n.times{
l_arr <<  l
l += 1
}
l = 0

l_arr.each { |i|
abs_arr << i.abs
}
abs_arr.sort!
p abs_arr

if l_arr.sum >= 0
  p l_arr.sum - abs_arr[0]
else
  p l_arr.sum + abs_arr[0]
end
