n = gets.chomp.to_i
s = gets.chomp.split(" ")

s.each do |item|
  if item == "Y" then
    puts "Four"
    exit
  end
end
puts "Three"
