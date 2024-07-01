N, M = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

all_votes = a.inject(:+)
all_votes /= (4 * M).to_f
# p all_votes

counter = 0

a.each do |val|
  counter += 1 if val >= all_votes
end

if counter >= M
  puts "Yes"
else
  puts "No"
end
