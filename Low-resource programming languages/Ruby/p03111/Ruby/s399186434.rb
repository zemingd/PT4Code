$N, $A, $B, $C = gets.chomp.split.map(&:to_i)
$l = []
$N.times { $l << gets.chomp.to_i }

# 三本の長さがa,b,cになったとき
# 合体後にabs(a - A) + abs(b - B) + abc(c - C) をたしたものコストになる

# a, b, cはそれぞれの長さ
def dfs(i, a, b, c)
  if i == $N
    # 一本も使っていないときは大きな数字を返す
    return 10**10 if i == 0 || b == 0 || c == 0

    return ($A-a).abs + ($B-b).abs + ($C-c).abs
  end

  y_i = a == 0 ? 0 : 1
  z_i = b == 0 ? 0 : 1
  w_i = c == 0 ? 0 : 1

  x = dfs(i+1, a, b, c)
  y = dfs(i+1, a + $l[i], b, c ) + 10*y_i
  z = dfs(i+1, a, b + $l[i], c ) + 10*z_i
  w = dfs(i+1, a, b, c + $l[i]) + 10*w_i

  return [x, y, z, w].min
end

p dfs(0, 0, 0, 0)

