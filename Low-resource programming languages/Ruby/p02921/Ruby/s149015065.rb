s = gets.chomp
t = gets.chomp

n = s.size
correct = 0
for i in 0...n
  correct += 1 if s[i] == t[i]
end
p correct