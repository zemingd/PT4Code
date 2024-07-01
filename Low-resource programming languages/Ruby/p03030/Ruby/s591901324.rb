def cin; gets.split.map(&:to_i) end

# exit if $0 != __FILE__

# n, *x = cin
# s = gets.chomp

# puts n
n = gets.to_i
r = []
n.times do |i|
  l = gets.split
  r << [i + 1, l[0], l[1].to_i]
end

r.sort! do |a, b|
  s = a[1] <=> b[1]
  next s if s != 0
  -(a[2] <=> b[2])
end

r.each do |x|
  puts x[0]
end
