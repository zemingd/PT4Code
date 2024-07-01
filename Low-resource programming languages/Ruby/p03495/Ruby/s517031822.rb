(N, K), As = readlines.map{|l| l.split.map(&:to_i)}

puts As.group_by(&:itself).values.map(&:size).sort.reverse.drop(K).inject(0, :+)