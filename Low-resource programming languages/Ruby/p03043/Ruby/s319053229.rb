dice_faces_count, border_line = gets.split.map(&:to_i)

def calc_score(current_score)
  current_score * 2
end

probability = (1..dice_faces_count).inject(0) do |result, i|
  score = i
  coin_tossed_count = 0
  while score < border_line do
    score = calc_score(score)
    coin_tossed_count += 1
  end
  result += 1 / dice_faces_count.to_f * (1 / 2.to_f ** coin_tossed_count)
end

p probability