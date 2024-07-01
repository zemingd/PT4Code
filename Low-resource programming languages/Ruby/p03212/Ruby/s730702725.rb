N = gets.to_i

def dfs(ns, max_digits)
  included = ns.reduce([false, false, false]) do |(i7, i5, i3), n|
    [
      i7 || n == 7,
      i5 || n == 5,
      i3 || n == 3
    ]
  end.all? { |i| i }
  count = if included
    ns.join('').to_i <= N ? 1 : 0
  else
    0
  end
  if ns.size == max_digits
    count
  else
    [7, 5, 3].reduce(count) do |acc, n|
      acc + dfs(ns + [n], max_digits)
    end
  end
end

ans = dfs([], N.to_s.size)
puts ans
