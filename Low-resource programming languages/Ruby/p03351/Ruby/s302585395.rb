a,b,c,d=gets.split.map &:to_i
puts [(a-c).abs,(a-b).abs+(b-c).abs].min>d ?:No: :Yes