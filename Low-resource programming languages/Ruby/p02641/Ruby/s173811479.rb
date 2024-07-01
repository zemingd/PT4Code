attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

X, Y = attrs.shift
if Y == 0 then
  puts X
else
  P = attrs.shift.sort
  min = [1000, 1000]
  for i in 1..100 do
    next if P.include? i
    if (i - X).abs == min[1] then
      next
    elsif (i - X).abs < min[1] then
      min = [ i , (i - X).abs]
      break if min[1] == 0
    end
  end
  puts min[0]
end