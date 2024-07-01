alp=[*"a".."z"];n=Array.new(26,0);ans=[alp,n].transpose.to_h
($stdin.read.chomp.scan(/[a-zA-Z]/).map(&:downcase).sort).each{|s|ans[s]+=1}
alp.each{|a|puts "#{a} : #{ans[a]}"}

