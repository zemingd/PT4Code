$n = gets.to_i
$ans = 0

def dfs(current, is_3, is_5, is_7)
  return if current > $n
  $ans += 1 if is_3 && is_5 && is_7
  dfs(current * 10 + 3, true, is_5, is_7)
  dfs(current * 10 + 5, is_3, true, is_7)
  dfs(current * 10 + 7, is_3, is_5, true)
end

dfs(0, false, false, false)
puts $ans
