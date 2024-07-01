S = gets.chomp.split.to_s
T = gets.chomp.split.to_s
# reverse.join で反転し加える
puts S.chars.sort.join < T.chars.sort.reverse.join ? "Yes" : "No"