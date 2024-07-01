attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0].to_i
M = attrs[0][1].to_i
H = attrs[1].map &:to_i
res = Array.new(N, true)
M.times do |m|
  a = attrs[m+2][0].to_i
  b = attrs[m+2][1].to_i
  if (H[a-1] < H[b-1]) then
    res[a-1] = false
  else
    res[b-1] = false
  end
end
puts (res.select {|r| r==true}).count