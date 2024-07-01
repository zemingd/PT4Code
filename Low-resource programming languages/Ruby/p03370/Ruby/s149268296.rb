can_make_num, gram_max = gets.split.map(&:to_i)

grams = []
can_make_num.times do
	grams.push << gets.to_i
end

remaining_gram = gram_max - grams.inject(:+)

max_num = remaining_gram/grams.min + can_make_num

puts max_num

