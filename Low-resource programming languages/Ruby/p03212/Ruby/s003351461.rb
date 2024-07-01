S = gets.strip
N = S.size
n = S.to_i

def dfs(s, n, a)
  if s.size == N
    a << s.to_i if s.split('').uniq.sort.eql?(['3', '5', '7'])
    return
  end

  dfs(s + '3', n, a)
  dfs(s + '5', n, a)
  dfs(s + '7', n, a)
end

a = []
3.upto(N) { |i| dfs('', i, a) }

puts a.count { |d| d <= n }
