s = gets.chomp.chars.map(&:to_i)
flag = s.each_cons(2).inject(false) {|flag,(a,b)| a == b ? true : flag}
puts flag ? 'Bad' : 'Good'