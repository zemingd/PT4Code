n=gets.to_i
fx=n.to_s.split("").map(&:to_i).inject(:+)
puts n%fx==0?:Yes: :No