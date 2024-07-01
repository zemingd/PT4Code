N, K = gets.split(' ').map(&:to_i)
gets.split(' ').map(&:to_i).sort.slice(l.length - K, K).inject(&:+)