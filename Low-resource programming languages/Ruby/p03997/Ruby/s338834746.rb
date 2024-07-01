a,b,h = gets.strip.map(&:to_i)
#a,b,h = 4,4,4

def area(a,b,h)
    (a+b) * h / 2
end

puts area(a,b,h)