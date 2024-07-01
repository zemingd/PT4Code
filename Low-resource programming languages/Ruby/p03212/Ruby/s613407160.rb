#357, 375, 537, 573, 735, 753

$count = 0
def solve(n, c)
  return 0 if n < c
  $count += 1 if c.to_s(10).split("").uniq.length == 3
  solve(n, (c.to_s(10)+'3').to_i)
  solve(n, (c.to_s(10)+'5').to_i)
  solve(n, (c.to_s(10)+'7').to_i)
end

n = gets.to_i
solve(n, 3)
solve(n, 5)
solve(n, 7)
puts $count