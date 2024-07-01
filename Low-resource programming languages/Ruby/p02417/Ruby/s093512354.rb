w=''
loop {w += gets.chomp.downcase}
[*'a'..'z'].each{|c|puts c+' : '+w.count(c).to_s}