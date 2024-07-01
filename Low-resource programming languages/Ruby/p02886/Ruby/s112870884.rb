N = gets.to_i
D = gets.split.map(&:to_i)

S = D.inject(:+)
V = D.map{|v|v**2}.inject(:+)

puts (S**2-V)/2