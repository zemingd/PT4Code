A, B, X = gets.split.map(&:to_i)
print(((X - A <= B) and (A <= X)) ? 'YES' : 'NO')