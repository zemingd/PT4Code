a, b, c, d = gets.chomp.chars.map(&:to_i)
pm = [:+, :-]
pm.product(pm, pm).each do |op1, op2, op3|
  if a.send(op1, b).send(op2, c).send(op3, d) == 7
    puts "#{a}#{op1}#{b}#{op2}#{c}#{op3}#{d}=7"
    exit 0
  end
end
exit 1
