X = gets.to_i
ans = 1
(2..(Math.sqrt(X).to_i)).each do |n|
  m = n * n
  if m <= X
    ans = m if m > ans
    m *= n
  end
end
puts ans
