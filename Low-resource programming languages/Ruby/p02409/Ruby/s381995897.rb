n = gets.chomp.to_i
bldg1 = Array.new(3){Array.new(10){0}}
bldg2 = Array.new(3){Array.new(10){0}}
bldg3 = Array.new(3){Array.new(10){0}}
bldg4 = Array.new(3){Array.new(10){0}}
while line = gets
  b, f, r, v = line.chomp.split(' ').map(&:to_i)
  case b
  when 1
    bldg1[f-1][r-1] = v
  when 2
    bldg2[f-1][r-1] = v
  when 3
    bldg3[f-1][r-1] = v
  when 4
    bldg4[f-1][r-1] = v
  end
end
bldg1.each do |f|
  print ' ', f.join(' '), "\n"
end
puts '#'*20
bldg2.each do |f|
  print ' ', f.join(' '), "\n"
end
puts '#'*20
bldg3.each do |f|
  print ' ', f.join(' '), "\n"
end
puts '#'*20
bldg4.each do |f|
  print ' ', f.join(' '), "\n"
end