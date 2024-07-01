N, M = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

total_vote_number = A.reduce(:+)
least_vote_number = total_vote_number / (4 * M)

if A.select{|a| a>= least_vote_number}.count >= M
  puts 'Yes'
else
  puts 'No'
end