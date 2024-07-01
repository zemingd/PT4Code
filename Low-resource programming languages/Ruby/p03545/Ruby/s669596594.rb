a, b, c, d = gets.chomp.split('').map(&:to_i)
oprators = %w(+ -)
oprators.each do |op1|
  oprators.each do |op2|
    oprators.each do |op3|
      s = "#{a}#{op1}#{b}#{op2}#{c}#{op3}#{d}"
      if eval(s) == 7
        puts "#{s}=7"
        exit
      end
    end
  end
end
