def digit_sum(n)
  sum = 0
  while n != 0
    sum += n%10
    n /= 10
  end
  sum
end
x=gets.to_i
puts x%digit_sum(x) == 0 ? "Yes" : "No"