n, k, q = gets.chomp.split.map(&:to_i)
scores = [k]*n
q.times do
  ai = gets.chomp.to_i
  scores.each.with_index do |si, i|
    next if i == ai - 1
    scores[i] -= 1
  end
end

scores.each do |s|
  puts s > 0 ? 'Yes' : 'No'
end
