n,l = gets.chomp.split.map(&:to_i)

pai = []

(1..n).each do |i|
  pai.push(l + i -1)
end

puts pai.inject(:+) - pai.min_by{|x| (x-0).abs}