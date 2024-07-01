lines = $stdin.readlines
S, T = lines[0].split(" ").map{ |s| s.strip }
A, B = lines[1].split(" ").map{ |s| s.strip.to_i }
U = lines[2].strip

puts "#{A - (U == S ? 1: 0)} #{B - (U == T ? 1 : 0)}"


