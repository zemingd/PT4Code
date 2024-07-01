s_ = gets.chomp.chars.sort.join
t_ = gets.chomp.chars.sort{|a,b| b <=> a}.join
puts  s_ < t_ ? 'Yes' : 'No'
