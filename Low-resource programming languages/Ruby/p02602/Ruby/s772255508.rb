n, k = gets.chomp.split(/\s+/).map(&:to_i)
scores = gets.chomp.split(/\s+/).map(&:to_i)

(k..(n-1)).each do |i|
  puts scores[i] > scores[i-k] ? "Yes" : "No"
end