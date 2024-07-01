attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = (attrs.shift)[0]
A = attrs.shift
h = {}
if N == 1 then
  puts 1
else
  for i in 1..N do
    h[ A[i - 1] ] = i
  end
  result = ""
  for i in 1..N do
    result << h[i].to_s
    result << " " unless i == N
  end

  puts result
end