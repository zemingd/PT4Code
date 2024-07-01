n = gets.to_i
s = gets.chomp.split('')

b = 0
w = 0
b1 = 0
n.times do |i|
  if s[i] == '#'
    b1 += 1
    b += 1
  elsif s[i] == '.' && b > 0
    b1 = 0
    w += 1
  end
end

if b - b1 < w && s[n-1] == '#'
  puts b - b1
else
  puts [b, w].min
end