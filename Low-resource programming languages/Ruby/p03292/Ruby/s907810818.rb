io = STDIN
a,b,c=io.gets.split.map(&:to_i)
ar=[(a-b).abs,(a-c).abs,(b-c).abs].sort
puts ar[0]+ar[1]
