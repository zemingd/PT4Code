*a,d=gets.split.map(&:to_i)
a,b,c=a.sort
puts (a-b).abs>d&&(b-c).abs>d ?"No":"Yes"
