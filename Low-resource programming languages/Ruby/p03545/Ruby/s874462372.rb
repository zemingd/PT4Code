a,b,c,d = gets.chomp.chars

["+","-"].repeated_permutation(3) do |op1,op2,op3|
    eq = a + op1 + b + op2 + c + op3 + d
    if eval(eq)==7
        puts eq+"=7"
        break
    end
end
