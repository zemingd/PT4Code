n = gets.to_i
ds = [9, 9**2, 9**3, 9**4, 9**5, 6, 6**2, 6**3, 6**4, 6**5, 6**6, 1]
count = 0
while (n != 0) do
  if n >= 12 && n <= 14
    n -= 6
  else
    n -= ds.select do |d|
      d <= n
    end.max
  end
  count += 1
end
puts count
