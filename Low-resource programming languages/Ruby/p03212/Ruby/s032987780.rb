N = gets.to_i
digit_count = N.to_s.size
candidate_list = [['3'], ['5'], ['7']]
current_digit_candidate_list = candidate_list
(digit_count - 1).times do
  current_digit_candidate_list =
    current_digit_candidate_list.flat_map do |candidate|
      ['3', '5', '7'].map { |c| [c] + candidate }
    end
  candidate_list = candidate_list + current_digit_candidate_list
end
answer = candidate_list
  .select { |ca| ca.uniq.size === 3 }
  .map { |ca| ca.join('').to_i }
  .count { |n| n <= N }
puts answer
