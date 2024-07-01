data = gets.chomp.split(" ").map(&:to_i)

loop do
  data[2] = data[2] - data[1]
  if data[2]<=0
    puts "Yes"
    break
  end
  data[0] = data[0] - data[3]
  if data[0]<=0
    puts "No"
    break
  end
end