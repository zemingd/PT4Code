N = gets.to_i
ai = gets.chomp.split(" ").map(&:to_i)
bi = gets.chomp.split(" ").map(&:to_i)
ci = gets.chomp.split(" ").map(&:to_i)

ans = 0

for i in 0...N do
  ans += bi[ai[i]-1]
  if ai[i+1] == ai[i] + 1 then
    ans += ci[ai[i]-1]
  end
end

p ans
