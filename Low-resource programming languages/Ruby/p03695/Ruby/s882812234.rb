n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
anyc = 0
a.each do |aa|
  if aa < 400
    h[1] += 1
  elsif aa < 800
    h[2] += 1
  elsif aa < 1200
    h[3] += 1
  elsif aa < 1600
    h[4] += 1
  elsif aa < 2000
    h[5] += 1
  elsif aa < 2400
    h[6] += 1
  elsif aa < 2800
    h[7] += 1
  elsif aa < 3200
    h[8] += 1
  else
    anyc += 1
  end
end

if anyc > 0 then
  cmin = [h.keys.length, 1].max
  cmax = [cmin + anyc, 8].min
else
  cmin = h.keys.length
  cmax = cmin
end


puts [cmin, cmax].join(" ")