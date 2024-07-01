a, b, c = gets.chop.split.map(&:to_i)

left = 2 * (a * b + b * c + c * a)
right = a * a + b * b + c * c

if left < right then
    print("Yes")
else
    print("No")
end