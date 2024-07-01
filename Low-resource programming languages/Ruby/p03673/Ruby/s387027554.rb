n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

even_arr = []
odd_arr = []

n.times do |i|
  if (i + 1) % 2 == 0
    even_arr << a[i]
  else
    odd_arr << a[i]
  end
end

# 偶数個のとき
if n % 2 == 0
  puts even_arr.reverse.push(odd_arr).flatten
else
  puts odd_arr.reverse.push(even_arr).flatten
end