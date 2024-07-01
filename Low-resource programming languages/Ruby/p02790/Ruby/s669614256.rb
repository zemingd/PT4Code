a,b = gets.split(' ').map(&:to_i)
if a < b
    b.each do |i|
        print a
    end
else
    a.each do |i|
        print b
    end
end
