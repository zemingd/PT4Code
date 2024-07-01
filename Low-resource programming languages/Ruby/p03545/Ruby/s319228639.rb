a, b, c, d = gets.chomp.chars.map(&:to_i)

expl = ""
["+", "-"].each do |op1|
  ["+", "-"].each do |op2|
    ["+", "-"].each do |op3|
      expl = "#{a}" + op1 + "#{b}" + op2 + "#{c}" + op3 + "#{d}"
      if eval(expl) == 7
        puts expl + "=7"
        exit
      end
    end
  end
end