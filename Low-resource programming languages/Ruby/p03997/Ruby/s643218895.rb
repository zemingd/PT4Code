a,b,h = gets.strip.split.map(&:to_i)

def area(a,b,h)
    (a+b) * h / 2
end

puts area(a,b,h)