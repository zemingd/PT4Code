n = gets.to_i
x = gets.split(" ").map(&:to_i)
sum = 0

(0..x.max).each do |i|
    x.each do |p|
        sum = sum + (p-i)**2
    end
    $min_sum ||= sum
    $min_sum = sum if $min_sum > sum
    sum = 0
end

puts $min_sum