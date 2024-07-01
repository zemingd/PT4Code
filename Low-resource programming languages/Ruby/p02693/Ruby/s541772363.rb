K = gets.to_i
A, B = gets.split.map(&:to_i)

puts (A .. B).any?{|d| d % K == 0} ? 'OK' : 'NG'