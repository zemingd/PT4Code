c = gets
b = c.length
l = -1
n = 0
while n < 1
    c.gsub!("10", "")
    #c.gsub!("01", "")
    if l == c.length
        n = 1
    end
    l = c.length
end
n = 0
l = -1
while n < 1
    #c.gsub!("10", "")
    c.gsub!("01", "")
    if l == c.length
        n = 1
    end
    l = c.length
end

puts b - c.length