n = gets.chomp!.to_i
str_list = Array.new
n.times do
  #str入力
  str = gets.chomp!
  #strバラし、繋げる
  str_list.push(str.chars.sort.join)
end

count = Hash.new(0)
str_list.each do |elem|
  count[elem] += 1
end

a = 0
count.each_value do |e|
  a += e*(e-1) / 2
end

p a