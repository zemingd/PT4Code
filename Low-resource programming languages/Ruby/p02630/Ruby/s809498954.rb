N = gets.to_i
a = gets.split(" ").map(&:to_i)
Q = gets.to_i
b = []; c = []
Q.times do |i|
  b[i], c[i] = gets.split(" ").map(&:to_i)
end
Q.times do |q|
  sum = 0
  0.upto(a.size-1) do |i|
    if a[i] == b[q]
      a[i] = c[q]
    end
    sum += a[i]
  end
  puts sum
end