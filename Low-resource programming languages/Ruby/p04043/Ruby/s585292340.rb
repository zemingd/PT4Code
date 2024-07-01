hash = Hash.new(0); gets.chomp().split(' ').each{ |n| hash[n] += 1}
(hash["5"] == 2 && hash["7"] == 1) ? "Yes" : "No"