words = []
N,L = gets.split.map(&:to_i)

N.times do
  words << gets.chomp
end

words.sort! do |a,b|
  result = a <=> b
end

p words.inject(:+)