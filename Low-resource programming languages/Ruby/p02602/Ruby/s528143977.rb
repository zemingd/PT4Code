n, k=gets.strip.split(" ").map(&:to_i)
as =gets.strip.split(" ").map(&:to_i)

before_score = nil
buffer = nil
as[k-1..n-1].each_with_index do |x, i|
  if buffer
    score = buffer * as[i+k-1]
  else
    score = as[i..i+k-1].inject(1) {|a, sum| a * sum}
  end
  buffer = score / as[i]

  if before_score == nil
    before_score = score
    next
  end

  puts score > before_score ? 'Yes' : 'No'
  before_score = score
end
