A, B, C, D = gets.strip.split.map(&:to_i)
puts ((A - B).abs <= D && (C - B).abs <= D) || (A - C).abs <= D ? 'Yes' : 'No'
