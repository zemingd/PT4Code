a=gets.chomp.to_i
puts a.count('a')!=0 && a.count('b')!=0 || a.count('c')!=0 ? "Yes" : "No"