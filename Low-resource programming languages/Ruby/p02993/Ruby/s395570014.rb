s = gets.chomp.split("")
(1..3).each do |i|
    if s[i] == s[i-1]
        puts "Bad"
        exit
    end
end
puts "Good"

