s=gets.chomp.split("")
ans=s.cons_each(2).count{|a,b|a==b}
puts ans>=1? "Bad":"Good"
