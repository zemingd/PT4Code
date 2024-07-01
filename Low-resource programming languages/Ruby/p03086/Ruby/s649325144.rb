@arg = gets.chomp

matched_strs = @arg.scan(/[ATCG]+/).map{|str| str.length}.max

p matched_strs