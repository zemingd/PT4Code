io = STDIN
s=io.gets.chomp.chars
puts s.map{|c|c=='1' ? "9" :1}.join
