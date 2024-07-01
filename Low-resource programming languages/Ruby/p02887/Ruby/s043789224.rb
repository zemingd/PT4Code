N = gets.to_i
slime = gets.chomp
 
slime_total = 0
 
slime.length.times do |num|
    if slime[num] != slime[num + 1]
        slime_total = slime_total + 1
    end
end
 
p slime_total