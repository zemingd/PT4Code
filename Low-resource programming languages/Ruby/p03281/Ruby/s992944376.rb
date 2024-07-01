n = gets.to_i

puts 1.step(n, 2).map {|i|
       (1..i).select {|x| (i % x).zero?}.size == 8
     }.count(true)