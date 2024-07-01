n, k = gets.split.map(&:to_i)
ds = gets.split
ans = n
loop do
  if (ans.to_s.chars.uniq & ds).empty?
    p ans
    break
  else
    ans += 1
  end
end