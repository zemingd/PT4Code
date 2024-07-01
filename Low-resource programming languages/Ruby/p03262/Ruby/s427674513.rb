attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end
X = attrs.shift[1]
x = Array.new
x = attrs[0]
ary = x.push(X)
ary = ary.sort

num = 99999999999
for i in 0..(ary.length - 2) do
  if num > (ary[i + 1] - ary[i]).abs then
    num = (ary[i + 1] - ary[i]).abs
  end
end

puts num