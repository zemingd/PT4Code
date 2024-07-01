a, b, c, d = gets.chars

["+", "-"].repeated_permutation(3){|op1, op2, op3|
  s = a + op1 + b + op2 + c + op3 + d
  if eval(s) == 7
    puts s + "=7"
    exit
  end
}
