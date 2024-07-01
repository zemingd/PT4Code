given_score = STDIN.gets.to_i
goal_score = STDIN.gets.to_i

score_to_aim = goal_score * 2 - given_score

puts score_to_aim