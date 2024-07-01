N = gets.chomp.to_i
puts (1..(N-1)).inject(0) {|result, item| result + item }
