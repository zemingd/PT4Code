gets.to_i
as = gets.split.map(&:to_i)
rates = Array.new(8, false)
free = 0

as.each do |a|
  case a
  when 1..399;    rates[0] = true
  when 400..799;  rates[1] = true
  when 800..1199; rates[2] = true
  when 1200..1599;rates[3] = true
  when 1600..1999;rates[4] = true
  when 2000..2399;rates[5] = true
  when 2400..2799;rates[6] = true
  when 2800..3199;rates[7] = true
  when 3200..;    free += 1
  end
end

puts [rates.select(&:itself).size, rates.select(&:itself).size + free].join(' ')