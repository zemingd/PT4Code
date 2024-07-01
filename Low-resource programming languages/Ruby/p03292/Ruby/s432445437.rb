a,b,c = gets.strip.split.map(&:to_i)
puts [(c-a).abs+(b-a).abs,(c-b).abs+(a-b).abs,(a-c).abs+(b-c).abs].min