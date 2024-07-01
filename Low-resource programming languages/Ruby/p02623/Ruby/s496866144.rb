N,M,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

max = 0

a = [0]
b = [0]
A.each_with_index do |n,i|
  a << a[i] + n
end
B.each_with_index do |n,i|
  b << b[i] + n
end

ans = 0
j = M

0.upto(N) do |i|
  if a[i] > K
    break
  end

  while b[j] > K - a[i] do
    j -= 1
  end
  c = i + j
  ans = c if c > ans
end

puts ans
