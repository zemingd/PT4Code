n, k = gets.strip.split(" ").map(&:to_i)

a = 0.0

def c(x, y)
  a = 1
  x *= 2
  while x < y
    a += 1
    x *= 2
  end
  a
end

1.upto(n) do |i|
  if i >= k
    a += 1.0 / n
  else
    if i == 1
      a += 1.0 / (n * 2**(Math.log2(k).ceil))
    else
      a += 1.0 / (n * 2**c(i, k))
    end
  end
end

puts a
