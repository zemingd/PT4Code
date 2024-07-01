s = gets.chomp
t = gets.chomp

c = 0
3.times do |i|
  if s[i] == t[i]
    c += 1
  end
end

puts c
