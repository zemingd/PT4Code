n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)
ans = 1000000
(1..100).each do |i|
    count = 0
    (0...n).each do |j|
        count += (x[j] - i) ** 2 
    end
    ans = [ans,count].min
end
puts ans