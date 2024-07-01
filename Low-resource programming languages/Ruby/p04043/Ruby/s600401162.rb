inp = gets.chomp();hash = Hash.new(0)
inp.each {|n| hash[n] += 1 }
unless hash["5"] == 2 && hash["7"] == 1