a,b,c = gets.chomp.split.map &:to_i
p ((a*b).even)? "No" : "Yes"