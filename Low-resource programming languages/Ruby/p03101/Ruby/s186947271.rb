H,W=gets.chomp.split(" ").map{|a| a.to_i}
ht,wd=gets.chomp.split(" ").map{|a| a.to_i}
puts (H-ht)*(W-wd)