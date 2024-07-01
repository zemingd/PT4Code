n,m = gets.chomp.split.map(&:to_i)
even_number = (1..(n * 2)).select{|i| i.even?}
odd_number = (1..((m * 2) - 1)).select{|i| i.odd?}

puts ((even_number.combination(2).to_a.length) + (odd_number.combination(2).to_a.length))