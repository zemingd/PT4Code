n = gets.to_i
arr = gets.chomp.split('')
w_sum = [0]
e_sum = [0]
arr.each_with_index do |v, i|
  if v == 'W'
    w_sum.push(w_sum[i] + 1)
  else
    w_sum.push(w_sum[i])
  end
end
w_sum.shift
arr.reverse.each do |v, _|
  if v == 'E'
    e_sum.unshift(e_sum[0] + 1)
  else
    e_sum.unshift(e_sum[0])
  end
end
e_sum.pop
min = 300001
(0...n).each do |i|
  min = [min, w_sum[i] + e_sum[i]].min
end
puts min - 1