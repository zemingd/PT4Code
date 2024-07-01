N = gets.to_i

def dfs(s)
  if s.to_i > N
    return 0
  end

  ret = 0
  if s.include?('7') && s.include?('5') && s.include?('3')
    ret += 1
  end

  ret += dfs('7' + s)
  ret += dfs('5' + s)
  ret += dfs('3' + s)

  ret
end

puts dfs('')
