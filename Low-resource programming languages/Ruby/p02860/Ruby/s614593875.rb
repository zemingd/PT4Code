n = gets.chomp.to_i
s = gets.chomp.split("")

middle = s.size / 2
oddd = s.size % 2
if(oddd == 1)
    puts "No"
    exit 0
end

for i in 0..(middle - 1) do
    mae = s[i]
    back = s[i + middle]
    if(mae != back)
        puts "No"
        exit 0
    end
end

puts "Yes"

