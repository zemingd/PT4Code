n = gets.to_i

ans = 0
dfs = -> (n) {
  stack = [7, 5, 3]
  until stack.empty? do
    x = stack.pop
    s = x.to_s
    if x <= n && s.count('7') >= 1 && s.count('5') >= 1 && s.count('3') >= 1
      ans += 1
    end
    if x > n
      next
    else
      [7, 5, 3].each {|c| stack.push(x * 10 + c)}
    end
  end
}
dfs.call(n)

puts ans

