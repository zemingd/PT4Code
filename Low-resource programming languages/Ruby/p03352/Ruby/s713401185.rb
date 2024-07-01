X = gets.to_i
ans = 1
(2..X).each do |n|
  m = n * n
  while m <= X
    ans = m if m > ans
    m *= n
  end
end
puts ans
