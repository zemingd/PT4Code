n_1,n_2,n_3 = gets.strip.split.map(&:to_i).sort.reverse

puts "#{n_1 - n_3}"