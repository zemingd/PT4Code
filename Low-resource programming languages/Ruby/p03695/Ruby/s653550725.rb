n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
anyc = 0
a.each do |aa|
  if aa < 3200
    c = aa / 400
    h[c] += 1
  else
    anyc += 1
  end
end


cmin = [h.keys.length, 1].max

cmax = h.keys.length + anyc

puts [cmin, cmax].join(" ")