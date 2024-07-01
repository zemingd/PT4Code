n,l = gets.chomp.split(' ').map(&:to_i)
words = []
n.times do
  words << gets.chomp
end

words.sort!
puts words.join('')
