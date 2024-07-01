puts proc{ |a,b,c,d| ([a,b,c].combination(2).map{|a,b|(a-b).abs<=d})? 'Yes':'No'}.(gets.split.map(&:to_i))
