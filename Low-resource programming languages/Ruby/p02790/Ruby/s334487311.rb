a=gets.chomp.split
b="#{a[0]}"*a[1].to_i
c="#{a[1]}"*a[0].to_i

puts b<c ? b : c