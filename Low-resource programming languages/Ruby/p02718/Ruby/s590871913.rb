m = gets.split(" ").map(&:to_i)[1]
votes = gets.split(" ").map(&:to_i)

amount_votes = votes.sum

border = amount_votes / (4 * m)
yes = 0

votes.each do |vote|
    if vote >= border
        yes += 1
    end
end

if yes >= m
    puts 'Yes'
else
    puts 'No'
end
