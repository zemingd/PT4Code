apt = Array.new( 4 ){ Array.new( 3 ){ Array.new( 10, 0 ) } }

gets,chomp
while ( info = gets,chomp )
  b, f, r, v = info.split.map(&:to_i)
  apt[ b-1 ][ f-1 ][ r-1 ] += v
end
apt.each.with_index(0) do | bldg, i |
  puts "#"*20 if i > 0
  bldg.each do | floor |
    puts " "+ floor.join( " " )
  end
end