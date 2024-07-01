input = gets.chomp.split(" ").map(&:to_i)
scores = Array.new(input[0],input[1]-input[2])

input[2].times do
  answer = gets.chomp.to_i - 1
  scores[answer] += 1
end
  
scores.each do |e|
  if e > 0
    puts "Yes"
  else
    puts "No"
  end
end