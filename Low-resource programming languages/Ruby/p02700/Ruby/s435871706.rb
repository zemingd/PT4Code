A, B, C, D = gets.chomp.split(" ").map(&:to_i)

dm1 = A.divmod(D)
dm2 = C.divmod(B)

puts dm1[0] + (dm1[1]==0 ? 0:1) >= dm2[0] + (dm2[1]==0 ? 0:1) ? 'Yes' : 'No'
