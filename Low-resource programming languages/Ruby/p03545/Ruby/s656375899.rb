a, b, c, d = STDIN.gets.chars.map(&:to_i)

ops = ['+', '-']

catch(:break_loop) do
  ops.each do |op1|
    ops.each do |op2|
      ops.each do |op3|
        sum = a.send(op1, b).send(op2, c).send(op3, d)
        if (sum == 7)
          puts "#{a}#{op1}#{b}#{op2}#{c}#{op3}#{d}=7"
          throw :break_loop
        end
      end
    end
  end
end