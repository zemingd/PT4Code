a,b,h = gets.strip.split.map(&:to_i)

def area(a,b,h)
    (a-b).abs * h
end

pus area(a,b,h)