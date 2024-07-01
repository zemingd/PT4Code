a,b,c = gets.split.map(&:to_i)
x = [0, ((a**0.5 * b**0.5)).to_i - 10].max
x *= 2
while x ** 2 <= 4 * a * b
  x += 1
end
x -= 1
puts a + b + x < c ? "Yes" : "No"
