s = gets.chars.map(&:to_i)
judge = s.each_cons(2).inject(false) {|flag,(a,b)| a == b ? true : flag}
puts judge ? 'Bad' : 'Good'