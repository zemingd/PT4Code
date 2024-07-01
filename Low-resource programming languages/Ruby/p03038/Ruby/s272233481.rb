n,m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
count = 0
readlines.each do |item|
	temp = item.split.map(&:to_i)
	count += temp[0]
	temp[0].times do
		cards << temp[1]
	end
end

puts cards.sort[count..-1].inject(:+)