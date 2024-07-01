(a, b, c, d) = gets.chars.map(&:to_i)

['+', '-'].each do |op1|
  ['+', '-'].each do |op2|
    ['+', '-'].each do |op3|
      e = sprintf("%d%s%d%s%d%s%d", a, op1, b, op2, c, op3, d)
      if eval(e) == 7
        puts e+'=7'
        exit(0)
      end
    end
  end
end
