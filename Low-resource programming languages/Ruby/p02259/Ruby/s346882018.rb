gets
n  = gets.split(' ').map{|i| i.to_i}
nl = n.length
ct = 0
nl.times do
  (nl-1).downto(1) do |j|
    if n[j-1] > n[j]
      n[j-1], n[j] = n[j], n[j-1]
      ct += 1
    end
  end
end

puts n.join ' '
puts ct