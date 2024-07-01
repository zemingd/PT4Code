N = gets.to_i

n, wk = [N, 0]
while n > 0 do
  dm = n.divmod(10)
  wk += dm[1]
  n = dm[0]
end

puts N % wk == 0 ? 'Yes' : 'No'
