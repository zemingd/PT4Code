n = gets.to_i 
a = gets.chomp.split.map(&:to_i)
b = Array.new()
(a.length).times do |i|
  if n % 2 == 0
    if i % 2 == 0
      b.push a[i]
    else
      b.unshift a[i]
    end
  else
    if i % 2 == 1
      b.push a[i]
    else
      b.unshift a[i]
    end
  end
end
 
puts b.join(" ")