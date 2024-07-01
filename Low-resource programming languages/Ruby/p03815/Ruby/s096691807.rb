io = STDIN
x=io.gets.chomp.to_i
if x==1
  p 2
elsif (x<=11)
  p x/6+1
else
  p (x/11)*2+1
end