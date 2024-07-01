N = gets.to_i
P = gets.chomp.split(" ").map(&:to_i)

count = 0
min = P[1]

P.each_with_index do |x, i|
    if i ==  0
        count += 1
    elsif min >= x
        min = x
        count += 1
    end
end

puts "#{count}"
