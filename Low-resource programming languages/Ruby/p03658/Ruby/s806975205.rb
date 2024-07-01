(n, k) = gets.chomp.split(' ').map(&:to_i)

puts gets.chomp.split(' ').map(&:to_i).sort{|a, b| b <=> a}.take(k).reduce(:+).to_s