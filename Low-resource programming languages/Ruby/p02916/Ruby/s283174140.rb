n = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

sum = 0
prev = 100
(0..(n-1)).each do |i|
  sum += b[a[i] - 1]
  if a[i] - 1 == prev + 1
    sum += c[prev]
  end
  prev = a[i] - 1
end
puts sum