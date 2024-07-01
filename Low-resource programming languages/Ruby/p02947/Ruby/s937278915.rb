n = gets.to_i
s = Array.new(n){gets.strip.split("").sort.join}.tally
count = 0
s.values.each do |i|
  count += i*(i-1)/2
end
puts count