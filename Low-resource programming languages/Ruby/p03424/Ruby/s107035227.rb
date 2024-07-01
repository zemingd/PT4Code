gets
s = gets.chomp.split(" ")

if s.count{|c| c == "Y" } > 0 then
    puts "Four"
else
    puts "Three"
end
