s = gets.chomp.chars
ans = ['+', '-'].repeated_permutation(3).find {|o| eval(s.zip(o).join) == 7 }
puts s.zip(ans).join + "=7"