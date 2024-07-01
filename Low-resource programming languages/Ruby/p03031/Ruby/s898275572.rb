def rec(s, i, m, ans)
  if i == N
    flag = true
    M.times do |i|
      on = 0
      m[i].each do |j|
        on += s[j-1]
      end
      if P[i] != (on%2)
        flag = false
        break
      end
    end
    ans += 1 if flag
    return ans
  end

  ans = rec(s, i+1, m, ans) # スイッチそのまま
  s[i] = 1
  ans = rec(s, i+1, m, ans) # スイッチ・オン
  s[i] = 0

  return ans
end

N, M = gets.split.map(&:to_i)
m = []
M.times do
  x = gets.split.map(&:to_i)
  x.shift
  m << x
end
P = gets.split.map(&:to_i)

s = [0]*N

puts rec(s, 0, m, 0)