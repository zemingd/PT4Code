attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift[0]
H = attrs.shift
m = 0
tmp = 0
if N == 1 then
  puts 0
else
  for i in 0..(H.length - 2) do
    tmp = 0 if H[i] < H[i + 1]
    tmp += 1 if H[i] >= H[i + 1]
    m = [ tmp, m ].max
  end
  puts m
end