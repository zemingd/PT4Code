a,b=gets.split
c="#{a}#{b}".to_i
puts(((c**(0.5)).floor)**2==c ? "Yes" :"No")