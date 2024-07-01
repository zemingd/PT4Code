line = gets
ans = "a" * line.length
index = line.length - 1
line.each_char do |char|
   ans[index] = char
   index += -1
end
print ans