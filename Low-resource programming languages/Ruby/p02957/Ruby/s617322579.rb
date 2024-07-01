A, B = gets.split.map(&:to_i).sort
puts (B-A)%2 == 0 ? (B+A)/2 : "IMPOSSIBLE"