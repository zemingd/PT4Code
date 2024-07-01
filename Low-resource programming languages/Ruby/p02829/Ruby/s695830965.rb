opt = [1,2,3]

a = gets.chomp.to_i
b = gets.chomp.to_i

opt.delete(a)
opt.delete(b)

print opt[0]