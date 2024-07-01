N = gets.to_i
digits = N.to_s.size

def dfs(digits_size, digits = [], &block)
  if digits.size == digits_size
    block.call(digits)
    return
  end
  [7, 5, 3].each do |n|
    d = digits.dup
    dfs(digits_size, d.push(n), &block)
  end
end

ans = 0
(3..digits).each do |d|
  dfs(d) do |list|
    is_ok = list.join('').to_i <= N &&
      list.count { |n| n == 7 } >= 1 &&
      list.count { |n| n == 5 } >= 1 &&
      list.count { |n| n == 3 } >= 1
    ans += 1 if is_ok
  end
end
puts ans