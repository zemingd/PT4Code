n = gets.chomp.to_i
s = gets.chomp
if n % 2 != 0
    puts 'No'
    exit
end
mae = s.slice(0, n/2)
ushiro = s.slice(n/2, n/2)
puts mae == ushiro ? 'Yes' : "No"
