N = gets.to_i
a = gets.split.map(&:to_i)

color = Hash.new { |h, k| h[k] = 0 }
N.times do |i|
  color[:gray]   += 1 if a[i].between?(   1,  399)
  color[:brown]  += 1 if a[i].between?( 400,  799)
  color[:green]  += 1 if a[i].between?( 800, 1199)
  color[:aqua]   += 1 if a[i].between?(1200, 1599)
  color[:blue]   += 1 if a[i].between?(1600, 1999)
  color[:yellow] += 1 if a[i].between?(2000, 2399)
  color[:orange] += 1 if a[i].between?(2400, 2799)
  color[:red]    += 1 if a[i].between?(2800, 3199)
  color[:any] += 1 if a[i].between?(3200, 4800)
end

num = 0
color.each do |k, v|
  next if k == :any
  num += 1 if v > 0
end
puts [num, num + color[:any]] * " "