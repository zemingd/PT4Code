def solve
  a, b, c, k = gets.split.map!(&:to_i)
  max_sum = 0

  if a >= k
    max_sum += k * 1
    return max_sum
  elsif a < k
    max_sum += a * 1
    k -= a
    if b >= k
      max_sum += k * 0
      return max_sum
    elsif b < k
      max_sum += b * 0
      k -= b
    end
  end

  if c < k
    max_sum += c * - 1
    return max_sum
  else
    while k > 0 do
      max_sum -= 1
      k -= 1
    end
  end

  max_sum
end
print solve