n = gets.chomp.to_i
ai = gets.chomp.split.map(&:to_i)
INF = 10**18
ans = 1

ai.each do |a|
  ans *= a
  if ans>INF
    ans = -1
    break
  end
end

p ans