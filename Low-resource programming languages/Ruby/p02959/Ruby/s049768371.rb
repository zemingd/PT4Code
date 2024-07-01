def min(a, b)
   (a < b) ? a : b
end

n = gets.chomp.to_i
tmp = gets.chomp
a_ary = tmp.split(" ")
a_ary.map! do |a|
  a.to_i
end

tmp = gets.chomp
b_ary = tmp.split(" ")
b_ary.map! do |b|
  b.to_i
end

result = 0

idx = 0
while idx < n do
  result += min(a_ary[idx], b_ary[idx])
  r_power = b_ary[idx] - a_ary[idx]
  if 0 < r_power
  	result += min(a_ary[idx+1], r_power)
  	a_ary[idx + 1] -= min(a_ary[idx+1], r_power)
  end
  idx += 1
end

puts result

