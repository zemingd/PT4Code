n, k, q = gets.chomp.split(' ').map(&:to_i)
scores = Array.new(n, k-q)
winners = readlines.map(&:chomp).map(&:to_i)
winners.each{|winner| scores[winner - 1] +=1 }
scores.each{|score| puts(score > 0 ? 'Yes' : 'No' ) }