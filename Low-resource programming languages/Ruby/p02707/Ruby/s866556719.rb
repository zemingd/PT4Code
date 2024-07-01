
NN = ARGF.gets.chomp.to_i

AA = ARGF.gets.chomp.split.collect {|el| el.to_i}

em = Array.new(NN) {0}

AA.each do |ai|
  em[ai - 1] += 1
end

em.each do |ei|
  puts ei
end

