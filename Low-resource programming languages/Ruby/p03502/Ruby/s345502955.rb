n=gets.to_i
fx=n.to_s.chars.map(&:to_i).inject(:+)
puts n%fx==0 ? :Yes : :No
