n = gets.chomp.split("").map(&:to_i)

n.each do |i|
  if i == 9
    puts "Yes"
    exit!
  end
end

puts "No"