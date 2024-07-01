a=gets.chomp.split("")

puts (a.count(a.uniq[0])==1 && a.count(a.uniq[1])==3)||(a.count(a.uniq[0])==3 && a.count(a.uniq[1])==1) ? "Yes" : "No"
