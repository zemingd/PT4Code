n, m = gets.chomp.split(" ").map(&:to_i)

p = Array.new(m) { |i| gets.chomp.split(" ").map(&:to_i) + [i] }
puts p.inspect
p.sort! do |a, b|
  if a.first != b.first
    a.first <=> b.first
  else
    a[1] <=> b[1]
  end
end

l = 0
r = 0
p.each do |e|
  if e[0] != l
    l = e[0]
    r = 0
  end

  r += 1
  e.push(r)
end

p.sort! {|a, b| a[2] <=> b[2] }
p.each do |e|
  puts "%06d%06d" % [e.first, e.last]
end
