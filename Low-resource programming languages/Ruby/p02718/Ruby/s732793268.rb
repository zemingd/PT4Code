n, m = gets.split(" ").map(&:to_i)
vote = gets.split(" ").map(&:to_i)

rate = 1 / (4 * m).to_f
vote_all = vote.inject(:+)

border = rate * vote_all

judge = []
vote.each do |num|
  if num >= border
    judge << "Yes"
  end
end

if judge.count("Yes") >= m
  puts "Yes"
else
  puts "No"
end