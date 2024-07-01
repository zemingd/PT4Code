apt = Array.new( 4 ){ Array.new( 3 ){ Array.new( 10, 0 ) } }

gets
while ( info = gets )
  b, f, r, v = info.split.map(&:to_i)
  apt[ b-1 ][ f-1 ][ r-1 ] = ( v < 0 )? 0: v
end
apt.each do | bldg |
  bldg.each do | floor |
    puts " "+floor.join( " " )
  end
  puts "#"*20
end