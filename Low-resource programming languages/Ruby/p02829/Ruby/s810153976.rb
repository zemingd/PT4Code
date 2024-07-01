A, B = gets.chomp.split.map(&:to_i)
ans = [1,2,3]
ans.delete(A)
ans.delete(B)
puts ans
