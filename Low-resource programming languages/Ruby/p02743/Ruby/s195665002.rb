a,b,c = gets.split.map(&:to_i)
x = [0, ((a*b)**0.5).to_i - 5].max
while x ** 2 <= a * b
  x += 0.5
end
x -= 0.5
puts a + b + 2 * x < c ? "Yes" : "No"
