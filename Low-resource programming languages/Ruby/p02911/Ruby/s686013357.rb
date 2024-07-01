participant_num, initial_point, ans_num = gets.split.map(&:to_i)
# 初期点数を initial_point - ans_num としておき、正解したら加算する
participants = Array.new(participant_num, initial_point - ans_num)
ans_num.times do |i|
  index = gets.to_i - 1
  participants[index] += 1
end

participants.each do |point|
  puts(point > 0 ? "Yes" : "No")
end
