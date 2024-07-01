H,W = gets.split.map(&:to_i)
s = H.times.map{gets.chomp.split("")}

l = Array.new(H) { Array.new(W, 0) }
r = Array.new(H) { Array.new(W, 0) }
u = Array.new(H) { Array.new(W, 0) }
d = Array.new(H) { Array.new(W, 0) }

max = 0
a1 = (0..H-1).to_a
a1r = a1.reverse#(H-1..0).to_a
a2 = (0..W-1).to_a
a2r = a2.reverse#(W-1..0).to_a

a1.product(a2) do |i,j|
  if s[i][j] == "#"
    l[i][j] = 0
  elsif j == 0
    l[i][j] = 1
  else
    l[i][j] = l[i][j-1] + 1
  end
  #puts "#{i}#{j}#{s[i][j]}#{l[i][j]}"
end
a1.product(a2r) do |i,j|
  if s[i][j] == "#"
    r[i][j] = 0
  elsif j == W-1
    r[i][j] = 1
  else
    r[i][j] = r[i][j+1] + 1
  end
  #puts "#{i}#{j}#{s[i][j]}#{r[i][j]}"
end
a1.product(a2) do |i,j|
  if s[i][j] == "#"
    u[i][j] = 0
  elsif i == 0
    u[i][j] = 1
  else
    u[i][j] = u[i-1][j] + 1
  end
  # puts "#{i}#{j}#{s[i][j]}#{u[i][j]}"
end
a1r.product(a2) do |i,j|
  if s[i][j] == "#"
    d[i][j] = 0
  elsif i == H-1
    d[i][j] = 1
  else
    d[i][j] = d[i+1][j] + 1
  end
  # puts "#{i}#{j}#{s[i][j]}#{d[i][j]}"
end
a1.product(a2) do |i,j|
  c = l[i][j] + r[i][j] + u[i][j] + d[i][j] - 3
  #puts "#{i}, #{j}, #{}, #{l[i][j]} #{r[i][j]} #{u[i][j]} #{d[i][j]}"
  max = c if c > max
end

puts max