n = $stdin.read.chomp.split("")
puts n.map {|i| i == "9" ? "1" : "9" }.join
