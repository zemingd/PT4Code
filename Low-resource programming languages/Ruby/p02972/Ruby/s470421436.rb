n = gets.to_i
a = [0] + gets.split.map(&:to_i)
n.downto(1) do |i|
  j = i
  b = 0
  while j <= n
    b += a[j]
    j += i
  end
  a[i] = b % 2
end
puts a.sum
1.upto(n) do |i|
  puts i if a[i] == 1
end