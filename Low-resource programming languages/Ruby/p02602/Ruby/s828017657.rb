n, k = gets.chomp.split.map(&:to_i)
scores = gets.chomp.split.map(&:to_i)

(n - k).times do |x|
  if scores[k + x] > scores[x]
    puts "Yes"
  else
    puts "No"
  end
end