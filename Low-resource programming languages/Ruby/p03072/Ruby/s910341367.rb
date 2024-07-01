n = gets.chomp.to_i
h = gets.chomp.split(' ').map!(&:to_i)
count = 0
(1..n).each do |a|
    mountains = h[0,a]
    puts mountains
    if mountains.max == mountains.last
        count += 1
    end
end
puts count
