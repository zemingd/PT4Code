st = gets.chomp.split(" ")
num = gets.chomp.split(" ").map(&:to_i)
u = gets.chomp

if u == st[0]
  num[0] -= 1
else
  num[1] -= 1
end

print num[0]
print " "
print num[1]
puts ""

