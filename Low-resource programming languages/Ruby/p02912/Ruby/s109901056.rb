n,m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
a.sort!
b = [a.pop / 2]
(m-1).times do
  if a.empty?
    tmp = b.shift / 2
    b << tmp
  else
    b << (a.pop / 2) if b.first <= a.last
    b << (b.shift / 2) if b.shift > a.last
  end
end
sum = 0
a.each { |i| sum += i } if !a.empty?
b.each { |i| sum += i }
puts sum
