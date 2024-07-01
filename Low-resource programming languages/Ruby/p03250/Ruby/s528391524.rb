v = gets.chomp.split(' ').map(&:to_i).sort{|a, b| b <=> a}
puts (v[0] * 10 + v[1] + v[2]).to_s