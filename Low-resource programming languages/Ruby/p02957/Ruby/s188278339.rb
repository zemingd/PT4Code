A, B = gets.chomp.split(' ').map(&:to_i)

K = (B + A) / 2
puts (A - K).abs == (B - K).abs ? K : 'IMPOSSIBLE'
