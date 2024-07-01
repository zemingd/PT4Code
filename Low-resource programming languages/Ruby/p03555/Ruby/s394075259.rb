lines = []
while line = gets
    lines << line.chomp.to_s
end
c=lines[1].reverse

puts lines[0]==c ? "Yes":" No"