D, T, S = gets.chomp.split.map(&:to_i)
print (D.fdiv(S) <= T ? 'Yes' :  'No')
