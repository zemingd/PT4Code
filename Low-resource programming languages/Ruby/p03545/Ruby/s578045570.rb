A, B, C, D = gets.chomp.split(//)

puts ['+', '-'].repeated_permutation(3).lazy.map{|op1, op2, op3| A+op1+B+op2+C+op3+D}.find{|e| eval(e) == 7} + '=7'