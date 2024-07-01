A, B, C = gets.chomp.split(' ').map(&:to_i)

ans = (1..B).find {|n| (A * n) % B == C}
puts ans.nil? ? :NO : :YES