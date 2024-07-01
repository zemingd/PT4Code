gets
n  = gets.split(' ').map{|i| i.to_i}
nl = n.length
ct = 0
(0..nl-2).each do |i|
  (i+1..nl-1).each do |j|
    if n[i] > n[j]
      n[i], n[j] = n[j], n[i]
      ct += 1
    end
  end
end

puts n.join ' '
puts ct