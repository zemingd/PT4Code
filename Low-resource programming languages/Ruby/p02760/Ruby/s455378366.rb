a = Array.new(3) { Array.new(3, 0) }
3.times do |i|
  a[i] = gets.split.map(&:to_i)
end

n = gets.to_i
b = n.times.map { gets.to_i }

hitted = Array.new(3) { Array.new(3, false) }

3.times do |i|
  3.times do |j|
    hitted[i][j] = true if b.any? { |n| n == a[i][j] }
  end
end

transposed = hitted.transpose
ans = 'No'

0.upto(2) do |i|
  ans = 'Yes' if hitted[i].all? || transposed[i].all?
end

if (a[0][0] && a[1][1] && a[2][2]) || (a[0][2] && a[1][1] && a[2][0])
  ans = 'Yes'
end

puts ans