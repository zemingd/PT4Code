nums = Array.new
while true do
   num = gets.chomp
   if num == "0"
      break
   end
   nums << num
end


nums.each do |chars|
   sum = 0
   chars.each_char.map {|char| sum += char.to_i}
   puts sum
end