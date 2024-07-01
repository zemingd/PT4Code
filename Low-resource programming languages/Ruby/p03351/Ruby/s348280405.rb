a,b,c,d=gets.split.map(&:to_i)
puts (a-c).abs>d&&((b-c).abs>d||(a-b).abs>d) ?"No":"Yes"
