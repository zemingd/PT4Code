
loop do
  input = gets.split
  input.map!{|num| num = num.to_i}
  break if input[0] == 0 and input[1] == 0
  puts "#{input.sort[0]} #{input.sort[1]}"
end