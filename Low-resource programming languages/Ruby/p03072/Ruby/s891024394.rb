attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift
mounts = attrs[0]

result = 1
max = mounts.shift

mounts.each do |m|
  if max <= m then
    max = m
    result += 1
  end
end
  
puts result