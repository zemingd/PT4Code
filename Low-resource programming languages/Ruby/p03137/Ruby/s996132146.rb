N, M = gets.split.map(&:to_i)
Xs = gets.split.map(&:to_i).sort

if M <= N
  ans = 0
else
  p diffs = Xs[1..-1].zip(Xs[0..-2]).map{|x1, x2| x1 - x2}.sort.reverse
  ans = diffs[(N-1)..-1].reduce(&:+)
end

puts ans