def main
 h = gets.chomp.to_i
 if h == 0
   puts 0
   return
 elsif h == 1
   puts 1
   return
 end
 h2 = h / 2
 n = 1
 loop do
     if 2 ** n >= h2
       puts (2 ** (n+1) -1)
       return
     end
     n = n + 1
 end
end

main