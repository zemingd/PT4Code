inputs = gets.chomp.split
nums = Array.new
pos = 0

inputs.each do |input|
   pos += 1

   if input == "+" || input == "-" || input == "*"
      n = input
      a = nums.pop
      b = nums.pop
      case n
      when "+"
         sum = b + a
      when "-"
         sum = b - a
      when "*"
         sum = b * a
      end
      nums.push sum
      pos = nums.count
   else
      n = input.to_i
      nums.push n
   end

end

puts nums[0]