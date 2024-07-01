n = gets.chomp
s = gets.chomp.split(//)

ans = 10000000

a = 0
b = s.count{|e| e == '.'}

s.size.times do |i|
  if s[i] == '#'
    a += 1
  else
    b -= 1
  end
  count = a + b
  # p count
  ans = [ans, count].min
end



200000.times do
  s.shift if s[0] == '.'
  s.pop if s[-1] == '#'
end

a = 0
b = 0

s.each do |c|
  a += 1 if c == '#'
  b += 1 if c == '.'
end

puts [ans, a, b].min
