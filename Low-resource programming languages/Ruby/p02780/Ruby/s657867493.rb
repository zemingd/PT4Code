ary_size, k = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)

kitai_list = {}
rui_list = []
ary.each_with_index do |x, i|
  kitai_list[x] = (x + 1) / 2.to_f unless kitai_list.has_key?(x)
  if i + k > ary_size
    next
  else
    num = i + k - 1
    sum = 0
    ary[i..num].each { |i| sum += i }
    rui_list << sum
  end
end

max_rui_index = rui_list.index(rui_list.max)

total = 0.0
k.times do |i|
  pick_index = max_rui_index + i
  total += kitai_list[ary[pick_index]]
end

puts sprintf("%.12f", total)