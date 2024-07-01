results = Hash.new
N, K = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
kinds = numbers.uniq.length - K
numbers.each do |number|
  results[number].nil? ? results[number] = 1 : results[number] += 1
end
if kinds <= 0
  puts 0
else
  result = 0 
  results.min_by(kinds) { |k, v| v }.each do |num|
    result += num[1]
  end
  puts result
end