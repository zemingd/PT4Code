n = gets.chomp.split("")
n.each do |i|
  if i == "9"
    puts "Yes"
    exit
  end
end
puts "No"