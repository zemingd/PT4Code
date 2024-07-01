N = gets.to_i

A = Array.new(200 + 1){ [] }
ODD = (1 .. 200).select{|i| i.odd? }.to_a

ODD.each do |i|
  ODD.each do |j|
    break if i * j > N
    A[i * j] << i << j
  end
end
A.each{|cmp| cmp.uniq!}
puts ODD.count{|i| A[i].size == 8 && i <= N}

