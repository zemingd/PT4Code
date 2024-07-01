a=gets.chomp.chars.map(&:to_i)
s=%w(+ -)
s.each do |op1|
  s.each do |op2|
    s.each do |op3|
      t = a.zip([op1,op2,op3]).join
      (puts t + '=7'; exit(0)) if eval(t) == 7
    end
  end
end
