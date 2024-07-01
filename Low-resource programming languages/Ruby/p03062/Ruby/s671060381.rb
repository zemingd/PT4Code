attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift[0]
A = attrs[0]

nega_count = 0
A.each {|v| nega_count += 1 if v < 0 }
nega_e = nega_count.even?
incl_0 = A.include?(0)

ary_abs = []
A.each{|v| ary_abs << v.abs}
result = 0
ary_abs.each{|v| result += v}
if incl_0 || nega_e then
  puts result
else
  puts result - ary_abs.min * 2
end