a,b,c = gets.chomp.split(' ')
if a[-1] == b[0] && b[-1] == c[0]
  p 'YES'
else
  p 'NO'
end
