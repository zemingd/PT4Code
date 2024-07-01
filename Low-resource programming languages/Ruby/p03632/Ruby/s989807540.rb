A, B, C, D = gets.split.map(&:to_i)
time = [B, D].min - [A, C].max

puts time.positive? ? time : 0