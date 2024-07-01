n, k = gets.split.map(&:to_i)

answer = (1..n).inject(0) do |result, num|
  score = num
  double_up_count = 0

  while score < k
    score *= 2
    double_up_count += 1
  end

  possibility = (1.0/n) * (1.0/2) ** double_up_count
  result + possibility
end

puts answer
