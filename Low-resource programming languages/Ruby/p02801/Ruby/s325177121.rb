alphabet = gets
array = ('a'..'z').to_a
ind = array.index(alphabet) + 1
ind.to_i
print array[ind]