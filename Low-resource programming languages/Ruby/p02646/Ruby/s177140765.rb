a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
t = gets.chomp.to_i

if (a[0]-b[0]).abs <= a[1]*t - b[1]*t then
    puts "YES"
else
    puts "NO"
end