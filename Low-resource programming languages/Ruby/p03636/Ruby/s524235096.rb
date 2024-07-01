# Your code here!

s = gets.chomp.split("")
head, tail = s[0], s[-1]
puts head + (s.length - 2).to_s + tail