n = gets.to_i
s = gets.strip.split("")

c = n / 2
count = 0

for x in (0..c - 1)
   if s[x] == s[4 + x - 1]
      count += 1
   end
end

if count == c
   puts 'Yes'   
else
   puts 'No'
end
