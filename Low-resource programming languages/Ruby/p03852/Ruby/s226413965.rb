s = gets.chomp.to_s
t = ''
 
words = %w[dream dreamer erase eraser]
 
words.each do |word|
  if s.include?(word)
    t += word
    s.delete!(word)
  end
end
 
if s == t
  puts 'YES' 
else
  puts 'NO'
end