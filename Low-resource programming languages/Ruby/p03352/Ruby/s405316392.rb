X = gets.chomp.to_i
ret = 1
(2..X).each do |i|
  exp = i
  exit if exp*i > X
  while(exp*i<=X) do
  exp *= i
  end
  if exp != i && exp > ret
  ret = exp
  end
end
puts ret