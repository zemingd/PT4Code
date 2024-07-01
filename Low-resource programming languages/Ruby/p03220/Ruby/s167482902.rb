amo = gets.to_i
t, goal = gets.split.map(&:to_i)
places = gets.split.map(&:to_i)

temps = places.map{|place| t - place * 0.006}
p temps

temps.map!{|temp| (goal - temp).abs}
p temps

puts temps.rindex(temps.min) + 1