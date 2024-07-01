w=gets.chomp
[*'a'..'z'].each{|c|puts c+' : '+w.count(c).to_s}