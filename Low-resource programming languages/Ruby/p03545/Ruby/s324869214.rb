nums = gets.chomp.chars
ops = ['+', '-'].repeated_permutation(3)
ans = ops.map { |s| nums.zip(s).join }.find { |s| eval(s) == 7 }
ans += '=7'
puts ans