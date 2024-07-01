a,b,c,d=gets.split.map &:to_i
a+=b;c+=d
puts a<c ?'Left': a==c ?'Balanced' : 'Right'