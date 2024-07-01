s=gets.chomp
t=gets.chomp.reverse
a=[s,t]
puts a==a.sort&&a[0]!=a[1] ? :Yes: :No