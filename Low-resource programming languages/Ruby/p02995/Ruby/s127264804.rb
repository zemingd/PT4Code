a, b, c, d = gets.split.map(&:to_i)
result = c*d
result = (c/2) * d if c%2 == 0 && d%2 == 0
first = ((a-1)/c) + ((a-1)/d) - ((a-1)/result)
second = b/c + b/d - b/result
number = b - a + 1
p number - (second - first)