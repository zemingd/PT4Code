a, b = gets.split.map(&:to_i)

if a < b
    b.times do
        print a
    end
else
    a.times do
        print b
    end
end