def dark x, n
  return x if n == 0
  dark (((x*1.05)/1000.0).ceil*1000).to_i, (n-1)
end

puts (dark 100000, gets.to_i)