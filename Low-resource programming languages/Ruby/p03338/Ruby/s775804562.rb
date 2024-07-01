N = gets.to_i
S = gets.chomp
max = 0

for i in 0..N-1
  a = S[0, i]
  b = S[i..N]
  score = 0
  
  ('a'..'z').map do |char|
    score += a.include?(char) && b.include?(char) ? 1 : 0
  end
  
  if max < score then
    max = score
  end
end
 
puts max