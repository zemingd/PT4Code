s=gets.chomp.split("")
ans=s.cons_each(2).count{|a|a[0]==b[1]}
puts ans>=1? "Bad":"Good"
