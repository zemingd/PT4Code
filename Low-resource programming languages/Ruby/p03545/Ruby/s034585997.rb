a, b, c, d = gets.chomp.chars
%w(+ -).each do |op1|
  %w(+ -).each do |op2|
    %w(+ -).each do |op3|
      expr = a + op1 + b + op2 + c + op3 + d
      if eval(expr) == 7
        puts "#{expr}=7"
        exit
      end
    end
  end
end
