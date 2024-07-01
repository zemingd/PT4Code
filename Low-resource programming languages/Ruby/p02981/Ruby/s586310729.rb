line = gets.chomp.split(" ").map(&:to_i)

train = line[0] * line[1]
tacy = line[2]

if train < tacy
    puts train
else
    puts tacy
end
