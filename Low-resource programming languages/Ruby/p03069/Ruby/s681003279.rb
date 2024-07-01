n = gets.to_i
s = gets.chomp.split('')

b = 0
w = 0
n.times do |i|
  if s[i] == '#'
    b += 1
  elsif s[i] == '.' && b > 0
    w += 1
  end
end

b -= 1 if s[n-1] == '#'

puts [b, w].min