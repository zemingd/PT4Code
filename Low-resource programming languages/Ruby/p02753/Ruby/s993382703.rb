s = gets.chomp

(1..2).each do |i| 
    if s[i] == s[i-1]
        puts "No"
        exit
    end
end
puts "Yes"
    