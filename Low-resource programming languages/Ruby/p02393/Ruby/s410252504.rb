a, b, c = gets.split.map(&:to_i)

until a < b && b < c do
    if a > b
        x = a
        a = b
        b = a
        elsif b > c
        x = b
        b = c
        c = x
        elsif a > c
        x = a
        a = c
        c = x
    end
end
        
puts "#{a} #{b} #{c}"