d, n = gets.split.map(&:to_i)

if d == 0
  p n
else
  p 100*n*10**d
end