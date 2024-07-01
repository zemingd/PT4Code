attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split
end
N = attrs.shift[0].to_i
S = attrs.shift[0].split("")

prev = ""
result = 0

for i in 0..(N - 1) do
  if prev != S[i] then
    prev = S[i]
    result += 1
  end
end

puts result