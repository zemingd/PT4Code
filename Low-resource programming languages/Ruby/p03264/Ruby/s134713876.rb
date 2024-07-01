io = STDIN
k=io.gets.to_i
if k.even?
  puts (k/2)**2
else
  puts (k-k/2)*(k/2)
end
