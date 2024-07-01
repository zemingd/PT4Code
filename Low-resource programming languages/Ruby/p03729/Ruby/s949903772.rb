arrays = gets.split(' ')
i = 0
f = []
while i < arrays.size
  word = arrays[i].split('')
  f << word
  i += 1
end
# [["r", "n", "g"],
#  ["g", "o", "r", "i", "l", "l", "a"],
#  ["a", "p", "p", "l", "e"]]

if f[0][-1]==f[1][0] && f[1][-1]==f[2][0]
  puts "YES"
else
  puts "NO"
end