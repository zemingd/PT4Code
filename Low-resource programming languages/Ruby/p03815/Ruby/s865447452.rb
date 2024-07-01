io = STDIN
x=io.gets.chomp.to_i
if (x<=11)
  p x/6+1
else
  p (x/11)*2 + ((x%11<=5) ? 1 : 2)
end