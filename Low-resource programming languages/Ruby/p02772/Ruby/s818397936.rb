lines = readlines.join.split.map(&:to_i)
_ = lines.shift 
ary = []
lines.each do |i|
  if i % 2 == 0
    if i % 3 == 0 || i % 5 == 0
      ary << 0
    else
      ary << 1
    end 
  end 
end
 
if ary.sum != 0
  puts "DENIED"
else
  puts "APPROVED"
end