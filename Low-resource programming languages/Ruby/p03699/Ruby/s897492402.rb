n = gets.chomp.to_i
score = []
n.times do
  input = gets.chomp.to_i
  score_tmp = []
  score.each do |s|
    score_tmp << [[s] << input].flatten
  end
  score.concat(score_tmp) if score_tmp != []
  score << input
end

ans = score.collect{|s| [s].flatten.inject(&:+)}.select{|arr| arr % 10 != 0}.max
puts (ans.nil?) ? "0" : ans