n = gets.chomp.to_i
t = []
n.times do
  t.push gets.chomp.to_i
end

p t

max = t.max
removed = t.select { |i| i != max }

again = true
while again
  removed.each do |item|
    if max % item == 0
      again = false
    else
      max = max * 2
      again = true
      break
    end
  end
end

print "#{max}"