S = gets.chomp
puts %w/RRR RR R/.find{|s| S.include?(s) }&.size || 0 