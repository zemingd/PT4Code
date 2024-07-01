n = gets.chomp
monsters_hp = gets.chomp.split(" ").map(&:to_i)
min = monsters_hp.min
monsters_hp = monsters_hp - [min]

while 1 do
  monsters_hp = monsters_hp.map{|hp| hp%min}
  monsters_hp = monsters_hp - [0]

  if monsters_hp.empty? then
    print min
    break
  elsif monsters_hp.min < min then
    monsters_hp << min
    min = monsters_hp.min
    monsters_hp = monsters_hp - [monsters_hp.min]
  end
end
