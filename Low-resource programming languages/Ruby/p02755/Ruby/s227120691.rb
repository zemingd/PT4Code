attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

A, B = attrs[0].map{|a| a.to_i}

r8 = 0.08
r10 = 0.1
x1 = A/r8
x2 = B/r10
x = [x1,x2].min.to_i
flag = true
res = -1
while (flag) do
  p8 = (x * r8).floor
  p10 = (x * r10).floor
  if (p8 == A && p10 == B) then
    flag = false
    res = x
  elsif (p8 > A || p10 > B) then
    flag = false
  else
    x += 1;
  end
end
puts res