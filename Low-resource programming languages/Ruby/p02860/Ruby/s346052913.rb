n = gets.to_i
s = gets.strip.split("")

c = n / 2
count = 0


if c.odd? 
   for x in (0..c - 1)
      if s[x] == s[ c + 1 + x - 1]
         count += 1
      end
   end
end

if c != 0 && count == c
   puts 'Yes'   
else
   puts 'No'
end
