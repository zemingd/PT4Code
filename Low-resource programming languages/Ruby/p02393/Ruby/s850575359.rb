a, b, c = gets.split.map(&:to_i)
while a > b or b > c do
if a > b then
tmp = b
b = a
a = tmp
end
if b > c then
tmp = c
c = b
b = tmp
end
end
print a, " ", b, " ", c, "\n"