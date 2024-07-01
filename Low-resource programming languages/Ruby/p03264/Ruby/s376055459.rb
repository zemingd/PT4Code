k = gets.to_i

even_cnt = k / 2
odd_cnt = k.even? ? even_cnt : even_cnt+1
puts even_cnt * odd_cnt