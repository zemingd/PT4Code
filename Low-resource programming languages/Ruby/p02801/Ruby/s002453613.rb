alp = ('a'..'z').to_a
a = gets.chomp
id = alp.index(a)
puts alp[(id+1)%26]
