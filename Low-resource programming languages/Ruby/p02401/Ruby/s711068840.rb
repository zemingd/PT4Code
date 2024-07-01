loop do
a,b,c=gets.chomp.split;a,c=a.to_i,c.to_i
exit if b=="?"
p a.public_send b,c
end
