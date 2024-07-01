n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

hash = {}

a.each.with_index do |item, i|
  hash[i.to_s] = item-1
end
junban = Array.new(n)

hash.each.with_index do |item, i|
	junban[hash[i.to_s]] = (i+1)
end

puts junban.join(' ')
