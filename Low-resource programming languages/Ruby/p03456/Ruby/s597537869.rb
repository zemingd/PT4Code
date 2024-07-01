n = gets.split.join.to_i
(1..316).each do |i|
  if i**2 == n
    puts "Yes"
    exit
  end
end
puts "No"
