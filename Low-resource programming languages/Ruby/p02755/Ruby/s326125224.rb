A, B = gets.split.map(&:to_i)

puts (1 .. 10000).find{|x| (x*0.08).floor == A && (x*0.1).floor == B} || -1