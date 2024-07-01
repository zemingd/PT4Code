L, N = gets.split.map(&:to_i)
words = []

N.times do
  words << gets.chomp
end

puts words.sort.join