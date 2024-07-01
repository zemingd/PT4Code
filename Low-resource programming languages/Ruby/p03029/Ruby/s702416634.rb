a,p=gets.chomp.split.map { |e| e.to_i }
piece=a * 3 + p
pie = piece / 2 if piece % 2 == 0
pie = (piece - 2 ) / 2  if piece % 2 == 1

print pie
