n.l = gets.split.map(&:to_i)
words = n.times.map(&:to_s).sort

puts words.join

