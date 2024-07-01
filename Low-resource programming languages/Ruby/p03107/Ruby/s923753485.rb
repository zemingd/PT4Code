s = gets.strip
len = s.length
while s.sub!(/((01)+|(10)+)/, "")
end
puts len - s.length