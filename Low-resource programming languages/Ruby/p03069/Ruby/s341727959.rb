attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp
end

N = attrs.shift.to_i
S = attrs[0].split("")

b = 0
w = 0

for i in 0..(N - 1) do
  if S[i] == "." then
    w += 1
  elsif S[i] == "#" then
    b += 1
  end
end

puts [w, b].min