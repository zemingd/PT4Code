x=gets.chomp.to_i

ad=(x%11==0? 0 : (x%11<=6 ? 1 : 2))
puts x/11*2+ad