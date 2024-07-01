apt = Array.new( 3 ){ Array.new( 4 ){ Array.new(0, 10) } }

gets
while (info = gets)
  b, f, r, v = info.chomp.split.map(&:to_i)
  apt[ b-1 ][ f-1 ][ r-1 ] += v
end

apt.each.with_index(0) do |bldg, i|
  puts "#"*20 if i > 0
  bldg.each do |floor|
    puts " #{ floor.join(" ") }"
  end
end