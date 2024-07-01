n = gets.to_i
ary = gets.split.map(&:to_i)
flag = false

n.times do |num|
  inc_num = num + 1
  inc_num -= n if n == inc_num
  flag = true if ary[num - 1] ^ ary[inc_num] != ary[num]
end

puts flag ? 'No' : 'Yes'