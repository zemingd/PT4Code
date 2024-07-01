line2 = []
line = gets.chomp.split(" ")
(0..2).each do |i|
line2.push(line[i].to_i)
end

if line2.include?(5) && line2.include?(7)
    if line2.count(5) == 2
        puts "YES"
    else
        puts "NO"
    end
else
    puts "NO"
end