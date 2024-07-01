n = gets.to_i
w = []
n.times do |i|
  w[i] = gets.to_s.chomp!
end
unless n == w.uniq.size
  puts 'No'
  exit 0
end

w.each_with_index do |word, index|
  next if index == 0
  unless w[index - 1][-1] == word[0]
    puts 'No'
    exit 0
  end
end

puts 'Yes'