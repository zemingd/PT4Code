n = gets.to_i
s = gets.chomp

x = Array(n)
x = [0]
c = 0
1.upto(n - 1).each do |i|
  if s[i - 1] == 'W'
    c += 1
  end
  x[i] = c
end

c = 0
(n - 2).downto(0).each do |i|
  if s[i + 1] == 'E'
    c += 1
  end
  x[i] += c
end

puts x.min