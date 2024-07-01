n,m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
y = 1
while y == 1 
  B = Array.new(6)
  x = n
  i = 0
  while i <= 5
    B[i] = x%10
    x = x/10
    if x == 0
      i = 100
    end
  end
  if (A & B).length != 0
    n = n + 1
  else
  y = 2
  end
end
puts n