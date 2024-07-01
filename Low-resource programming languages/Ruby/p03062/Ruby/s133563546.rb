N = gets.to_i
A = gets.split.map(&:to_i)
S = A.map(&:abs).inject(0,&:+)
puts A.count{|v| v < 0 }.odd? ?  S - 2 * A.min_by(&:abs).abs : S 
