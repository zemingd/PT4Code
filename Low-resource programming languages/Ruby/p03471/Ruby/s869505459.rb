
x,y = gets.strip.split(" ").map(&:to_i)
count = "-1 -1 -1"
(0..x).each do |n|
    (0..(x-n)).each do |m|
        l = x - n - m
        count = "#{n} #{m} #{l}" if 10000 * n + 5000 * m + 1000 * l == y
    end
end
print count