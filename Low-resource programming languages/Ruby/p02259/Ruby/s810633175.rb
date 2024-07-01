N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
flag = true
i = 0
ans = 0
while flag
  flag = false
  (N - 1).downto(i + 1) do |j|
    if A[j] < A[j - 1]
      a = A[j]
      b = A[j - 1]
      A[j] = b
      A[j - 1] = a
      flag = true
      ans += 1
    end
  end
  i += 1
end
print "#{A[0]}"
(1..N-1).each do |k|
  print " #{A[k]}"
end
puts ''
puts ans

