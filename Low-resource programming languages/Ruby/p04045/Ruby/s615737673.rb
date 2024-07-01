N, K = gets.split.map(&:to_i)
ds = gets.split

ans = N.to_s.split("")

while (ans - ds != ans) do
  ans = (ans.join.to_i + 1).to_s.split("")
end

puts ans.join