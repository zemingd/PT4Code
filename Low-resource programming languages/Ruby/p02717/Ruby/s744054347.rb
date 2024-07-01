x,y,z = gets.split(' ').map(&:to_i)
arr = {a:x, b:y, c:z}
# A=>B
rep = arr[:a]
arr[:a] = arr[:b]
arr[:b] = rep
# A=>C
rep = arr[:a]
arr[:a] = arr[:c]
arr[:c] = rep
puts  arr.values.join(' ')