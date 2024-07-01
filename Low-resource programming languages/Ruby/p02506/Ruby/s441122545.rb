w = gets.chomp
count = 0

while true
  input = gets
  if input == "END_OF_TEXT\n" then break end
  
  input = input.chomp
  input = input.split(" ")
  
  input.each_with_index do |str|
    if w == str then count+=1 end
  end
  
end

puts count