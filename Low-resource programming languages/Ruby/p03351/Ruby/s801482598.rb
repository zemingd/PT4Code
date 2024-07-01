A, B, C, D = gets.split.map(&:to_i)
ans = ((A - C).abs <= D) || ((A - B).abs <= D && (B - C).abs <= D)
puts(ans ? 'Yes' : 'No')
