n, m = gets.split.map(&:to_i)

a = gets.split.map(&:to_i).sort.reverse


minVote = a.sum / (4.0 * m)

answer = true

m.times do |i|
  answer = false if a[i] < minVote
end

puts answer ? "Yes": "No"