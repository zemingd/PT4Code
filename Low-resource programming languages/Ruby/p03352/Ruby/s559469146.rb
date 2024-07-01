X = gets.to_i
arr = Array.new

ans = 1
b = 2
p = 2
while b <= Math.sqrt(X)
  n = b**p
  if n <= X
    ans = [ans, n].max
    p += 1
  else
    b += 1
    while arr.include?(b)
      b += 1
    end
    p = 2
  end
end

puts ans
