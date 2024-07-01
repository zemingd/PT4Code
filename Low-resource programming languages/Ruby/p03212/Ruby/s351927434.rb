N = gets.chomp.to_i

def check(x)
  x = x.to_s
  x.include?('3') && x.include?('5') && x.include?('7')
end

def dfs(x)
  ans = 0
  if x <= N
    ans += 1 if check(x)
    ans += dfs(x*10 + 3)
    ans += dfs(x*10 + 5)
    ans += dfs(x*10 + 7)
  end
  ans
end

puts dfs(0)