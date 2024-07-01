n = gets.chomp.to_i
a = gets.split.map(&:to_i)
a = a.sort
new_a = a.uniq
if a == new_a
    puts "YES"
else
    puts "NO"
end