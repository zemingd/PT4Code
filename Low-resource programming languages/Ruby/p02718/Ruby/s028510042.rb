N,M = gets.chomp.split(' ').map(&:to_i)
votes = gets.chomp.split(' ').map(&:to_i)
border = (votes.sum * (1 / (4 * M)))
over_border_votes = 0
votes.each do |v|
  if v >= border
    over_border_votes += 1
  end
end

if over_border_votes >= M
  puts 'Yes'
else
  puts 'No'
end
