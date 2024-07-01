n=gets.to_i
a=gets.split(" ").map(&:to_i)
bf=a.size
af=a.uniq.size

if bf==af
    puts "Yes"
else
    puts "No"
end