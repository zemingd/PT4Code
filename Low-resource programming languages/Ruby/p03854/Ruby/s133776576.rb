# n = gets.split.map(&:to_i)
# array = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
#
#

s = gets.chomp.reverse
t = ""


u1 = "dreamer".reverse
u2 = "eraser".reverse
u3 = "dream".reverse
u4 = "erase".reverse
while s.slice!(u2)

end
while s.slice!(u4)
end

while s.slice!(u1)
end
while s.slice!(u3)

end

puts s.reverse
puts s.length == 0 ? "YES" : "NO" 
