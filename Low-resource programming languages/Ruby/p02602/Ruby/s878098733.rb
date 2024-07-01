n, k = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)

(k + 1..n).each do |period|
  if scores[period - 1] > scores[period - k - 1]
    puts 'Yes'
  else
    puts 'No'
  end
end
