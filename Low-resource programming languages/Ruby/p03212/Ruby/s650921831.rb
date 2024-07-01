$n=gets.chomp.to_i

def dfs(s)
  return 0 if s.to_i > $n
  ret = 0
  ret = 1 if s.include?("3") && s.include?("7") && s.include?("5")
  c = "753"
  for i in 0..2 do
    ret += dfs(s+c[i])
  end
  return ret
end

puts dfs("0")
