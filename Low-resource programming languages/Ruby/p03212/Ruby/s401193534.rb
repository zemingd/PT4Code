s = readline.chomp.to_i

def is_753(x)
  found = {}
  x.to_s.each_char do |c|
    case c
    when '3','5','7'
      found[c] = true
    else
      return false
    end
  end
  found['3'] and found['5'] and found['7']
end

def dfs(n, upper, ans)
  if n > upper
    return
  end
  if is_753(n)
    ans << n
  end
  dfs( n*10 + 3, upper, ans )
  dfs( n*10 + 5, upper, ans )
  dfs( n*10 + 7, upper, ans )
end

ans = []
dfs(0, s, ans)
puts ans.size
