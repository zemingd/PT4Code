$n = gets.to_i

def dfs(x)
  return 0 if x > $n
  total = 0
  tmp = x.to_s.chars
  if tmp.include?("3") && tmp.include?("5") && tmp.include?("7") && tmp.all?{|a| a == "3" || a == "5" || a == "7"}
    total += 1
  end
  total += dfs(10 * x + 3)
  total += dfs(10 * x + 5)
  total += dfs(10 * x + 7)
  total
end

puts dfs(0)