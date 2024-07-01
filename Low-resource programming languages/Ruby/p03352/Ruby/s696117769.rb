x = gets.to_i
max = 1

for b in 2..(x**0.5).to_i
  n = b
  while n*b <= x
    n *= b
  end
  max = [max,n].max
end
puts max