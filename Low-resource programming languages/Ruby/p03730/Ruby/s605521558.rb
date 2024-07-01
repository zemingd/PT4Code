a, b, c = gets.split.map(&:to_i)
m = a % b
b.times do |i|
    if m * (i % b) % b == c
        puts "YES"
        exit
    end
end
puts "NO"