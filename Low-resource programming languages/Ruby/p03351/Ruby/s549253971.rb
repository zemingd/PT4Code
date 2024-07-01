puts proc{ |a,b,c,d| (a-b).abs <= d && (b-c).abs <= d ? 'Yes' : 'No'}.(gets.split.map(&:to_i))
