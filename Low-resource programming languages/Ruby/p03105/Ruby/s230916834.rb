money,sound,satis_times = gets.split(" ").map!{|i| i.to_i}
cut = money % sound
max_time = (money - cut) / sound

if max_time > satis_times
  puts satis_times
else 
  puts max_time
end
