n = gets.chomp.to_i
a = gets.chomp.split(' ')

result = Array.new(1000000, nil)
sentou = 0
matsubi = -1

a.reverse.each.with_index do |num, i|
  if (i.even?)
	result[sentou] = num
    sentou += 1
  else
    result[matsubi] = num
    matsubi -= 1
  end
end
puts result.compact.join(' ')