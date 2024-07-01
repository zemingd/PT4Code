n, l = gets.split(" ").map(&:to_i)
array = []

n.times do |i|
    array << l + i
end

puts array.inject(:+) - array.min_by{|x| x.abs}
