attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift[0]
P = attrs.shift

result = 0

for i in 1..(N - 2) do
  s = [P[i - 1] , P[i] , P[i + 1]].sort
  if (s[0] < P[i]) && (s[1] == P[i])then
    result += 1 
  end
end

puts result