a, b, c = gets.split.map(&:to_i)

until a < b && b < c do
    if a > b then
        x = a
        a = b
        b = a
        elsif b > c then
        x = b
        b = c
        c = x
        elsif a > c then
        x = a
        a = c
        c = x
    end
end
        
puts "#{a} #{b} #{c}"