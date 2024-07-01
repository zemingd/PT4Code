n, k, q = gets.split.map(&:to_i)
corrects = Hash.new(0)
q.times do
  corrects[gets.to_i] += 1
end

(1..n).each do |index|
  incorrect = q - corrects[index]
  if incorrect >= k
    puts "No"
  else
    puts "Yes"
  end
end
