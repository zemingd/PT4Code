s=gets.chomp.chars.sort.join
t=gets.chomp.chars.sort.reverse.join
a=[s,t]
puts a==a.sort&&a[0]!=a[1] ? :Yes: :No