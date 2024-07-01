s=gets.chomp.chars.sort
t=gets.chomp.chars.sort.reverse
puts((s<=>t)<0 ? "Yes" : "No")
