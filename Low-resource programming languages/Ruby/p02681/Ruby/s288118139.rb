S = gets.chomp
T = gets.chomp

if S == T.slice(0..-2) then
    puts "Yes"
else
    puts "No"
end
