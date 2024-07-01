def dfs(s)
  return 0 if s.to_i > N #終了条件
  ret = 0
  ret = 1 if s.include?(?3) && s.include?(?5) && s.include?(?7)
  "753".chars do |i| #末尾に7,5,3をつける3分岐
    ret += dfs( s + i )
  end
  return ret
end

N = gets.to_i
p dfs('0')