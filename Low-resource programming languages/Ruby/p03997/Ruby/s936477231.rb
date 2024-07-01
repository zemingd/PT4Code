a,b,h = gets.strip.split.map(&:to_i)
# a,b,h = 4,5,4

def area(a,b,h)
    (a-b).abs * h
end

puts area(a,b,h)