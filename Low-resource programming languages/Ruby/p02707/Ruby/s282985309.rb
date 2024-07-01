humans = gets.chomp.to_i
lists = gets.chomp.split.map(&:to_i)
humans.times do |i|
  puts lists.count(i + 1)
end