a = gets.split(" ").map!{|i| i.to_i}
a.sort!
sum = 0
a.each do |j|
  if i % 2 == 0
    sum += a[j]
  else sum -= a[j]
  end
end
puts sum