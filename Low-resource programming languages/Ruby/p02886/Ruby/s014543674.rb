n = gets
tkyks = gets.chomp.split.map(&:to_i)

total = 0
tkyks.combination(2).to_a.each do |set|
  total += set[0]*set[1]
end

puts total