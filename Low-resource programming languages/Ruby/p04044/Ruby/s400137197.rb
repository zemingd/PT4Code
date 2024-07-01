n, m = gets.split.map(&:to_i)
words = []

n.times do 
  words.push(gets.chomp)
end

puts words.sort[0]