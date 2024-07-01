a = []
m = {}
3.times { a << gets.split.map(&:to_i); }

b = []
gets.to_i.times { b << gets.to_i}

3.times do |i|
  v = true
  h = true
  3.times do |j|
    v &= b.include?(a[i][j])
    h &= b.include?(a[j][i])
  end
  if v || h
    puts 'Yes'
    return
  end
end

if b.include?(a[0][0]) && b.include?(a[1][1]) && b.include?(a[2][2])
  puts 'Yes'
  return
end

if b.include?(a[0][2]) && b.include?(a[1][1]) && b.include?(a[2][0])
  puts 'Yes'
  return
end

puts 'No'
