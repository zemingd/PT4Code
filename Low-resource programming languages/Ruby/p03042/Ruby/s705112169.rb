a = gets.chomp
m = a[0..1].to_i
n = a[2..3].to_i 

if (1 <= m && m <= 12) && (1 <= n && n <= 12)
   puts "AMBIGUOUS"    
elsif (1 > m || m > 12) && (1 <= n && n <= 12)
   puts "YYMM"
elsif (1 <= m && m <= 12) && (1 > n || n > 12)
   puts "MMYY"
else  (1 > m || m > 12) && (1 > n || n > 12) 
   puts "NA"
end