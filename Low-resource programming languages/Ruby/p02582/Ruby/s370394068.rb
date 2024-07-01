a=gets.chomp
if a=="RRR"
p 3
elsif a=="SSS"
p 0
elsif a=="RRS" or a=="SRR"
p 2
elsif a=="RSR" or a=="SSR" or a=="RSS" or a=="SRS"
p 1
end