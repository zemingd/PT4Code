A, B, C = gets.split.map(&:to_i)

puts (1 .. B).any?{|n| n*A % B == C} ? 'YES' : 'NO'