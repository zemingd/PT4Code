A, B, C = gets.chomp.split.map(&:to_i)
if (A - B > C) 
  p 0
else
  p (C - (A - B))
end