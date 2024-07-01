N, Q = gets.split.map(&:to_i)
S = gets.chomp
lists = []
Q.times do
  lists << gets.split.map(&:to_i)
end

lists.each do |j, r| 
  p S[j-1..r-1].scan(/AC/).size || 0
end

