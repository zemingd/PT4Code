n,m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
a.sort! { |a, b| b <=> a }
b = [a.shift / 2]
(m-1).times do
  if n != 0
  if b[0] <= a[0]
    b << (a.shift / 2)
  else
    tmp = b.shift / 2
    b << tmp
  end
  else
    b[0] = b[0] / 2
  end
end
sum = 0
a.each { |i| sum += i }
b.each { |i| sum += i }
puts sum
