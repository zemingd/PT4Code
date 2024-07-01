n = gets.strip.to_i
a = gets.strip.split(' ').map(&:to_i)
q = gets.strip.to_i
b = []
c = []
q.times do |i|
  b[i], c[i] = gets.strip.split(' ').map(&:to_i)
end
q.times do |i|
  sum = 0
  (0..(a.length - 1)).each do |j|
    a[j] = c[i] if a[j] == b[i]
    sum += a[j]
  end
  puts sum
end