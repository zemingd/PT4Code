n = gets.chomp.to_i
s = gets.chomp

scores = []

(1..n-1).each do |variable|
  a = s[0, variable]
  b = s[variable, n]

  score = 0
  ('a'..'z').map do |char|
    score += a.include?(char) && b.include?(char) ? 1 : 0
  end

  scores << score
end

puts scores.max