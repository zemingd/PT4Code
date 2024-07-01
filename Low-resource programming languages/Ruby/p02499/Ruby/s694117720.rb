while true
 input = gets.split("")
 alpha = ("a".."z").to_a
 alpha.length.times do |i|
  sum = 0
  input.length.times do |k|
   if input[k].downcase == alpha[i]
    sum += 1
   end
  end
  puts "#{alpha[i]} : #{sum}"
 end
 break if input[input.length] = "."
end