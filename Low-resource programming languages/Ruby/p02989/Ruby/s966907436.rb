# first_AC:20200202
question_count = gets.to_i
question_levels = gets.split.map(&:to_i)
question_count_half = question_count/2
question_sorted_levels = question_levels.sort

if question_sorted_levels[question_count_half] == question_sorted_levels[question_count_half - 1]
  p 0
else
  p question_sorted_levels[question_count_half] - question_sorted_levels[question_count_half - 1]
end
