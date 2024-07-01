A, B = *$stdin.read.strip.split(/\s+/m).map {|n| n.to_i }

a_min = A * 100 /  8
a_max = ((A + 1) * 100 / 8.0).ceil - 1
a_range = (a_min..a_max).to_a
#puts a_range.to_s
b_min = B * 100 / 10
b_max = (B + 1) * 100 / 10 - 1
b_range = (b_min..b_max).to_a
#puts b_range.to_s

result = a_range & b_range
#puts result.to_s
if result.empty?
  puts "-1"
else
  puts result.min
end
