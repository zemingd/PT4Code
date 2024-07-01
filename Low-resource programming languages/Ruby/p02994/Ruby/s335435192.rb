N, L = gets.split.map(&:to_i)
ringo = (L...N+L).to_a

sum = ringo.inject(:+)

(puts sum ; exit ) if ringo.include?(0)

if sum > 0
  puts sum - ringo[0]
else
  puts sum - ringo[-1]
end
