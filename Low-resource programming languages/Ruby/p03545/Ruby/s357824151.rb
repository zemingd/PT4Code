def main
  input = gets.chomp
  ops = ["+", "-"]

  ops.each do |op_1|
    ops.each do |op_2|
      ops.each do |op_3|

        output = input[0].to_i

        if op_1 == "+"
          output += input[1].to_i
        else
          output -= input[1].to_i
        end

        if op_2 == "+"
          output += input[2].to_i
        else
          output -= input[2].to_i
        end

        if op_3 == "+"
          output += input[3].to_i
        else
          output -= input[3].to_i
        end
        if output == 7
          puts "#{input[0]}#{op_1}#{input[1]}#{op_2}#{input[2]}#{op_3}#{input[3]}=7"
          return
        end
      end
    end
  end
end

main()