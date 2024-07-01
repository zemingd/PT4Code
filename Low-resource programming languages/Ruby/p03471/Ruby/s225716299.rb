n,y = gets.split.map(&:to_i)
y /= 1000

# a + b + c = n
# 10a + 5b + c = y

(0..y/10).each do |i|
    (0..y/5).each do |j|
        
        c = 10 * i + 5 * j - y
        if c >= 0
            puts [i,j,c] * " "
            exit
        end
    end
end

puts "-1 -1 -1"