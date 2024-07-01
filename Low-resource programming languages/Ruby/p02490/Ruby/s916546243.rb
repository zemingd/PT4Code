array = []
while true do
  input = gets.split
  break if input[0].to_i == 0 and input[1].to_i == 0
  array.push(input.sort)
end

array.each do |nums|
  puts "#{nums[0]} #{nums[1]}"
end