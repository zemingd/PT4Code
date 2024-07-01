N = gets.chomp.to_i

def dfs(s, bit)
  # N以上の七五三数は調べない
  if s.to_i > N
    return 0
  end
  if bit == 7
    ret = 1
  else
    ret = 0
  end
  ret += dfs(s + '3', bit | 1)
  ret += dfs(s + '5', bit | 2)
  ret += dfs(s + '7', bit | 4)
  return ret
end

print dfs('0', 0)