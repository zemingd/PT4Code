input_formula = gets.split(" ").map{|item|
    case item
    when "+", "-", "*"
        item
    else
        item.to_i 
    end
}

stack_array = []

input_formula.each_with_index do |item, index|
   if item.class == Integer
       stack_array.push(item)
       
   else
       case item
       when "+"
            temp_result = stack_array[-2] + stack_array[-1]
       when "-"
           temp_result = stack_array[-2] - stack_array[-1]
       when "*"
           temp_result = stack_array[-2] * stack_array[-1]
       end
       stack_array.slice!(-2, 2)
       stack_array.push(temp_result)
       
   end
end

puts stack_array.join.to_i


