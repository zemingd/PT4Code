s=gets.chomp.split("")
ans=s.each_cons(2).count{|a|a[0]==a[1]}
puts ans>=1? "Bad":"Good"
