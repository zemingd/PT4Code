n,m = gets.chomp.split(" ").map(&:to_i)
vote = gets.chomp.split(" ").map(&:to_i)
minVote = vote.inject(:+) * 1 / (4 * m).to_f
count = 0
(0..n-1).each do |i|
    # puts vote[i]
    if vote[i] >= minVote
        count += 1
    end
end
if count >= m
    puts "Yes"
else
    puts "No"
end