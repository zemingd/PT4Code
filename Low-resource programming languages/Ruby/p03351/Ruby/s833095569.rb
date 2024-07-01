A, B, C, D = gets.strip.split.map(&:to_i)
puts (A - B).abs <= D && (A - B).abs <= D ? 'Yes' : 'No'
