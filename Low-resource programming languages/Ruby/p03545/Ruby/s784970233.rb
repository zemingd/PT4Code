A, B, C, D = gets.chomp.split("")

["+", "-"].repeated_permutation(3) do |op1, op2, op3|
  if 7 == eval(A+op1+B+op2+C+op3+D)
    puts A+op1+B+op2+C+op3+D+"=7"
    exit
  end
end
