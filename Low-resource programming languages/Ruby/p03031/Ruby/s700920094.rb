SWITCHES, LIGHTS = gets.split(' ').map(&:to_i)
switches_to_check = []
LIGHTS.times do
  sum, *switches = gets.split(' ').map{|n| n.to_i }
  switches_to_check << switches
end
ps = gets.split(' ').map(&:to_i)
total = 0
0.upto(2 ** SWITCHES - 1) do |i|
  switches = i.to_s(2).split('').map{|s| s == '1' ? true : false}
  if switches.length != SWITCHES
    (SWITCHES - switches.length).times{switches.unshift(false)}
  end
  lights_on = 0
  1.upto(LIGHTS) do |m|
    total_switches_on = 0
    switches_to_check[m - 1].each do |stc|
      total_switches_on += 1 if switches[stc - 1] == true
    end
    lights_on += 1 if total_switches_on % 2 == ps[m - 1]
  end
  total += 1 if lights_on == LIGHTS
end
p total