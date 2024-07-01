A,B,C,D = gets.split.map(&:to_i)
puts %w(Balanced Left Right)[A+B<=>C+D]
