numbers = gets.chomp.chars.map(&:to_i)
sum = 0
["+", "-"].each do |op1|
  ["+", "-"].each do |op2|
    ["+", "-"].each do |op3|
      sum = numbers[0]
      if op1 == "+"
        sum += numbers[1]
      elsif op1 == "-"
        sum -= numbers[1]
      end
      if op2 == "+"
        sum += numbers[2]
      elsif op3 == "-"
        sum -= numbers[2]
      end
      if op3 == "+"
        sum += numbers[3]
      elsif op3 == "-"
        sum -= numbers[3]
      end
      if sum == 7
        puts "#{numbers[0]}#{op1}#{numbers[1]}#{op2}#{numbers[2]}#{op3}#{numbers[3]}=7"
        exit
      end
    end
  end
end