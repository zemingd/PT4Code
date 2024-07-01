n = gets.to_i
works = n.times.map {gets.split.map(&:to_i)}.sort_by { |a, b| b }
ans = 'Yes'
sum = 0
works.each do |a, b|
  sum += a
  ans = 'No' if sum > b
end
puts ans