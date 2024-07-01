N = gets.chomp.to_i
for i in 0..N*N do
  if i*i > N then
    puts (i-1)*(i-1)
    exit

end
