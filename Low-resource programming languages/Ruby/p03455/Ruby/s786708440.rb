a,b=gets.chomp.split(" ").map(&:to_i);
(a*b).even? ? puts 'Even' : puts 'Odd'