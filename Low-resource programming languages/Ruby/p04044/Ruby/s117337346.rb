n,_ = gets.chomp.split.map(&:to_i)
words = []

n.times do
    words << gets.chomp
end

puts words.sort.join