s = gets.chomp
count = 0
(1..2).each do |i| 
    if s[i] == s[i-1]
      count += 1  
    end
end
if count == 2
    puts "No"
else
    puts "Yes"
end