S = gets.chomp
y, m, d = S.split('/').map(&:to_i)

if m <= 4 then
    puts "Heisei"
else
    puts "TBD"
end