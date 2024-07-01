(e,o) = $stdin.gets.split(" ").map { |e| e.to_i }

ee = e*(e-1)/2
ee += o*(o-1)/2

puts ee