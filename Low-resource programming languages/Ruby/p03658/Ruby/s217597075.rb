n, k = gets.chomp.split(' ').map(&:to_i)
length = gets.chomp.split(' ').map(&:to_i).sort.reverse

sum = 0

(0...k).each do |i|
  sum += length[i]
end

puts sum