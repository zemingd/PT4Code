def rectangleArea(x,y)
  return x * y
end

def rectangleLength(x,y)
  return (x + y) * 2
end

s = gets.chomp
x = s.split(" ")[0].to_i
y = s.split(" ")[1].to_i

puts rectangleArea(x,y).to_s + ' ' + rectangleLength(x,y).to_s