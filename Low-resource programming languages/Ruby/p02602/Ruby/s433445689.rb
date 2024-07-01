n, k=gets.strip.split(" ").map(&:to_i)
as =gets.strip.split(" ").map(&:to_i)

before_score = nil
n.times do |i|
  if i + 1 >= k
    score = as[i+1-k..i].inject(1) {|a, sum| a * sum}
    next if before_score == nil

    puts score > before_score ? 'Yes' : 'No'
  end
end
