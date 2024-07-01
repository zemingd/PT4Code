attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

tmp = attrs.shift
N = tmp[0]
M = tmp[1]
a = attrs.shift.sort
bc_ary = attrs
bc_ary.each do |bc|
  b = bc[0]
  c = bc[1]
  next if a.min > c
  for i in 0..(b-1) do
    break if a[i] >= c
    a[i] = c
  end
  a = a.sort
end
result = 0
a.each{|n| result += n}
puts result