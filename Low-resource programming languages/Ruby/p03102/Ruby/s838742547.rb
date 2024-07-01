N,M,C = gets.split(" ").map(&:to_i)
B = gets.split(" ").map(&:to_i)

count = 0
N.times do |n|
  A = gets.chomp.split.map(&:to_i)
  score = 0
  M.times do |m|
    score += A[m] * B[m]
  end
  if score + C > 0
    count += 1
  end
end

puts count

