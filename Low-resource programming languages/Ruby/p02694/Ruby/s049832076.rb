inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end
n = 100.0
X = inputs[0].to_f

ans = 0

while(n < X) do
  ans += 1
  n = (n * 1.01).floor.to_f
end

puts ans;
