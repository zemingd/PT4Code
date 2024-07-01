S = gets.chomp
ops = ['+', '-']
ops.product(ops).product(ops).each do |(op1, op2), op3|
  expr = S.dup
  expr.insert(1, op1)
  expr.insert(3, op2)
  expr.insert(5, op3)
  #p expr: expr, result: eval(expr)
  if eval(expr) == 7
    puts "#{expr}=7"; exit
  end
end
raise
