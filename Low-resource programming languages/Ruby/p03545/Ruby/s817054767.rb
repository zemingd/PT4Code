@nums = gets.strip.split('').map(&:to_i)

@ops = [nil, nil, nil]
[:+, :-].each do |op1|
    [:+, :-].each do |op2|
        [:+, :-].each do |op3|
            calc = @nums[0].send(op1, @nums[1]).send(op2, @nums[2]).send(op3, @nums[3])
            if calc == 7
                @ops = [op1, op2, op3]
            end
        end
    end
end

puts "#{@nums[0]}#{@ops[0]}#{@nums[1]}#{@ops[1]}#{@nums[2]}#{@ops[2]}#{@nums[3]}=7"