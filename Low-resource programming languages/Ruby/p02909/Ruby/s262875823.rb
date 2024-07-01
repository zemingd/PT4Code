n, k, q = gets.to_s.split.map(&:to_i)
array = []
score = []
n.times do
  score << k - q
end
q.times do
  array << gets.to_i
end

array.each do |a|
  score[a] += 1
end
score.each do |s|
  puts s > 0 ? "Yes" : "No"
end