n = gets.to_i
s = gets.strip

c = n / 2
count = 0

front = ''
last = ''

if c.odd? 
   front = s[0, c]
   last = s[c, c]

   if front == last
      puts 'Yes'
   else
      puts 'No'
   end
else
   puts 'No'
end
