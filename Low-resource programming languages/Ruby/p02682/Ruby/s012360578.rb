a, b, c, k = gets.split(" ").map(&:to_i)

sum = a % (k + 1)

k -= sum

if k > 0
  k -= b

  if k > 0
    sum -= k
  end
end

puts sum
