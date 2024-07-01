X = gets.to_i
A = gets.to_i
B = gets.to_i

C = X - A
k = 0
while C > B
C = C - B
k = k + 1
end

puts(C)