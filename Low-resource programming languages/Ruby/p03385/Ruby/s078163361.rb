h={"a"=>0,"b"=>0,"c"=>0}
gets.chomp.split('').each{|s|h[s]+=1}
puts h.values.count{|x|x==1}==3 ? "Yes" : "No"