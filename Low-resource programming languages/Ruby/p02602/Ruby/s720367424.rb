n, k=gets.strip.split(" ").map(&:to_i)
as =gets.strip.split(" ").map(&:to_i)

before_score = nil
as[k-1..n-1].each_with_index do |x, i|
  score = as[i..i+k-1].inject(1) {|a, sum| a * sum}
  if before_score == nil
    before_score = score
    next
  end

  puts score > before_score ? 'Yes' : 'No'
  before_score = score
end
