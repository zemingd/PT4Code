a,b,c = gets.strip.split.map(&:to_i)
if (a + b) >= c && a <= c
   puts 'YES'
else
   puts 'NO'
end