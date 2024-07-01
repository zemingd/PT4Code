s = gets.chomp.chars
judge = s.each_cons(2).inject(true){|flag, (a, b)| a == b ? false : flag}
puts judge ? "Good" : "Bad"