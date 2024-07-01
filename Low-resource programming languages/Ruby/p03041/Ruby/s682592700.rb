N, K = gets.split(' ').map(&:to_i)
S = gets.split('')
puts S.map.with_index { |s, i| i == (K - 1) ? s.downcase : s }.join
