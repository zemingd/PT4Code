a,b = gets.split(' ').map(&:to_i)
if a > b
    a.times do |time|
        print b
    end
else
    b.times do |time|
        print a
    end
end
