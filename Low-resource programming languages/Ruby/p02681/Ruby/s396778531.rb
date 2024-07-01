s=gets.chomp
t=gets.chomp
puts ((?a..?z).any?{|c|s+c==t} ? :Yes : :No)
