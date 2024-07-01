money,sound = gets.split(" ").map!{|i| i.to_i}
cut = money % sound
max_time = (money - cut) / sound

puts max_time
