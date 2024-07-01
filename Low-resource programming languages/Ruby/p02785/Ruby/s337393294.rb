N, K = gets.chomp.split(/ /).map(&:to_i)
puts gets.chomp.split(/ /).map(&:to_i).sort[0..(-K - 1)].inject(&:+).to_i