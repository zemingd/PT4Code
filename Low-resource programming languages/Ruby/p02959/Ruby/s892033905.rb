N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ans = 0

B.each_with_index do |b, i|
  current = B[i]

  if B[i] >= A[i]
    ans += A[i]
  else
    ans += current
  end

  current -= A[i]

  if current > 0
    if current >= A[i + 1]
      ans += A[i + 1]
      A[i + 1] = 0
    else
      ans += current
      A[i + 1] -= current
    end
  end

  # p "ans #{ans} current #{current}"
end

puts ans
