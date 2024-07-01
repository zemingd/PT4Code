h, w = gets.chomp.split.map(&:to_i)
grid = h.times.map{ gets.chomp.split('') }
ans = grid.select{ |ar| ar.any?{ |c| c == '#' } }
ans.transpose.select{ |ar| ar.any?{ |c| c == '#' } }.transpose.each{ |ar| puts ar.join('') }
