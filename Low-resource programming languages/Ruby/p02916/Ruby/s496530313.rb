n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
sum = 0
n.times do |i|
  sum += b[a[i] - 1]
  if a[i-1] + 1 == a[i]
    sum += c[a[i-1]-1]
  end
end

puts sum