A, B, C = gets.chomp.split.map(&:to_s)

puts [(A + B).to_i + C.to_i,
	  (B + A).to_i + C.to_i,
      (A + C).to_i + B.to_i,
      (C + A).to_i + B.to_i,
      (B + C).to_i + A.to_i,
      (C + B).to_i + A.to_i].max