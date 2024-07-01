a, b = gets.split().map{|n| n.to_i}

c = b / a
if c * a == b
    puts a + b
else
    puts b - a
end