question_count = gets.to_i
question_sorted_levels = gets.split.map(&:to_i).sort
half = question_sorted_levels.size/2
p question_sorted_levels[half] - (question_sorted_levels[half -1])
