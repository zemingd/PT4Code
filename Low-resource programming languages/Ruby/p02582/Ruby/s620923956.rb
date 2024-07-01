a=gets.chomp
if a=="SSS"
  p 0
elsif a=="RRR"
  p 3
elsif a=="SRR" or a=="RRS"
  p 2
else
  p 1
end