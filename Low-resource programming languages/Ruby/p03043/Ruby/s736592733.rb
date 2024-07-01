N, K = gets.chomp.split(" ").map(&:to_i)

def forScore(score)
  for i in 0..N
    return i if score >= K
    score = score * 2
  end
end

percentage = []

for i in 1..N
  percentage << (1.0 / N) * (0.5 ** forScore(i))
end

answer = 0

percentage.each do |s|
  answer += s
end

puts answer