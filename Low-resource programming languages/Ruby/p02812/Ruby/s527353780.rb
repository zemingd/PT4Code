n = gets.to_i;
s = gets.chomp.to_s;

i = 0
count = 0

while i < n
   if s[i] == 'A' && s[i + 1] == 'B' && s[i+2] == 'C'
      count += 1;
      i += 2
   end

   i += 1
end

puts count; 
