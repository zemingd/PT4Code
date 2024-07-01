#Ruby

s= gets.chomp.to_i

former=s/100
latter=s-former*100
if former>0&&former<=12&&latter>0&&latter<=12
puts "AMBIGUOUS"
elsif former>0&&former<=12
puts "YYMM"
elsif latter>0&&latter<=12
puts "MMYY"
else
puts"NA"
