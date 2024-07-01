N = gets.to_i

def _753?(x)
  x = x.to_s
  x.include?('7') && x.include?('5') && x.include?('3')
end

def dfs(x)
  cnt = 0
  if x <= N
    # 0スタートで10倍+3,5,7だと753数字しか来ない
    cnt += 1 if _753?(x)
    cnt += dfs (x*10 + 3) #3 -> 33 -> 333
    cnt += dfs (x*10 + 5)
    cnt += dfs (x*10 + 7)
  end
  cnt
end

puts dfs(0)