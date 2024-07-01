n=gets.to_s 
n=n.gsub("1","0")
n=n.gsub("9","1")
n=n.gsub("0","9")
puts n.to_i 