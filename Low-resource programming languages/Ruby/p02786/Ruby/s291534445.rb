def solve(h)
  return h == 1 ? 1 : 1 + solve(h/2)*2
end
p solve(gets.to_i)
