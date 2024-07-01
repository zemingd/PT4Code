n = gets.to_i
arr = (1..n).to_a.permutation.to_a

ps = gets.strip.split.map(&:to_i)
qs = gets.strip.split.map(&:to_i)

ans = (arr.index(ps) - arr.index(qs)).abs
puts ans