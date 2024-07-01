n = gets.to_i
a = gets.split.map &:to_i
cnt = 0
(0..n-1).each do |i|
  (n-1).downto(i+1) do |j|
    if a[j] < a[j-1]
      a[j], a[j-1] = a[j-1], a[j]
      cnt += 1
    end
  end
end
puts a * ' '
puts cnt
