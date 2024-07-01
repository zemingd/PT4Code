S = gets.split('/').map(&:to_i)
puts S[1] > 4 ? 'TBD' : 'Heisei'