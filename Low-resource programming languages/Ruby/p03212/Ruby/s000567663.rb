$n = gets.to_i
def dfs (s)
  return 0 if s.to_i > $n
  ret = ["7","5","3"].all?{|i|s.include?(i)} ? 1:0
  ["7","5","3"].each do |c|
    ret  += dfs(s + c)
  end
  return ret
end
puts dfs("0")

 