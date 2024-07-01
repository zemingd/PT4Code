strs = gets.chomp.split(' ').map(&:to_i).sort

puts (strs[-1].to_s + strs[1].to_s).to_i + strs[0]
