N = gets.to_i
S = N.times.map { gets.to_i }

scores = Hash.new
scores[0] = true

S.each do |s|
  temp = scores.dup

  temp.each_key do |score|
    scores[score + s] = true
  end
end

puts scores.keys.select { |x| x == 0 || x % 10 != 0 }.max
