A, B, X = gets.split.map(&:to_i)
ans = (A <= X) && (A + B >= X)
puts(ans ? 'YES' : 'NO')
