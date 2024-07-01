def solve(n, y)
  for a in 0 .. n
    for b in 0 .. n - a
      c = n - a - b
      if (a*10000 + b*5000 + c*1000) == y
        return [a, b, c]
      end
    end
  end
  return [-1, -1, -1]
end

n, y = gets.split.map(&:to_i)
ans  = solve(n, y)
puts ans.map(&:to_s).join(" ")
