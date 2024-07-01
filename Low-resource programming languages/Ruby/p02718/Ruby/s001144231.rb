N,M=gets.chomp.split.map(&:to_i)
A=gets.chomp.split.map(&:to_i)

total_vote_count=A.inject(:+)
if (A.sort.reverse)[M-1]<total_vote_count/(4*M)
    puts "No"
else
    puts "Yes"
end