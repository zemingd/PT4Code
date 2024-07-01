n = gets.chomp.to_i
a = gets.split.map(&:to_i)

remaining_ball = n-1

n.times do |n|
  copy = a.dup
  copy.delete_at(n)
  ball_sets = copy.combination(2).to_a
  ans = []
  [*0...ball_sets.count].each{|i| ans << 1 if ball_sets[i][0] == ball_sets[i][1]}
  puts ans.count
end