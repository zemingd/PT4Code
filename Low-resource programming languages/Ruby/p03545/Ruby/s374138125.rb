a, b, c, d = gets.chomp.split("").map(&:to_i)
ops = ["+", "-"]
ops.each do |i|
  ops.each do |j|
    ops.each do |k|
      expr = "#{a}#{i}#{b}#{j}#{c}#{k}#{d}"
      if eval(expr) == 7 then
        puts expr+"=7"
        exit
      end
    end
  end
end