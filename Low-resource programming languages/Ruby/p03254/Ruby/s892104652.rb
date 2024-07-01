N, x = gets.split.map &:to_i
A = gets.split.map &:to_i

ans = 0
A.sort.each{|a|
  x -= a
  if x < 0
    break
  else
    ans += 1
  end
}
p x > 0 ? ans - 1 : ans
