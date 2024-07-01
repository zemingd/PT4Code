N = gets.to_i

def dfs(a, use, &block)
  return if a > N
  yield a if use == 0b111

  [3, 5, 7].each do |i|
    mask = 1 << ((i - 3) / 2)
    dfs(a * 10 + i, use | mask, &block)
  end
end

ans = 0
dfs(0,0) do |a|
  ans += 1
end
puts ans