a, b, c, k = gets.split(' ').map{|s| s.to_i}

sum = 0

if a > 0
  if a >= k
    puts a
    return
  else
    sum += a
    k -= a
  end
end

if b > 0
  if b >= k
    puts sum
    return
  else
    k -= b
  end
end

puts sum - k