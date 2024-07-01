s = gets.to_s
t = gets.to_s
trimmed = t[0...-1]
answer = s == trimmed ? 'True' : 'No'
print answer