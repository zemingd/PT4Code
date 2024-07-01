s = gets.chomp.split("").sort.join
t = gets.chomp.split("").sort{|n,m| m <=> n}.join

if s < t
    puts "Yes"
else
    puts "No"
end