s = gets.chomp.split("")
n = s.count
t1 =  s[0..((n-1)/2)-1]
t2 =  s[(n+3)/2-1..n-1]

(t1.count/2).times do |i|
 unless t1[i] == t1[-(i+1)] && t2[i] == t2[-(i+1)]
   puts "No"
   exit
 else
   next
 end
end

(t2.count/2).times do |i|
 unless  t2[i] == t2[-(i+1)]
   puts "No"
   exit
 else
   next
 end
end

puts "Yes"