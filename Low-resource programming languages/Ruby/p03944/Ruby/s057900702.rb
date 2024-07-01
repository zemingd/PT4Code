# input
W, H, N = gets.chomp.split.map(&:to_i)
field = Array.new(H+1).map{Array.new(W+1, 1)};
query = []
N.times do
  query.push(gets.chomp.split.map(&:to_i))
end

# main 
query.each do |q|
  od = q[2]
  xfr = 0; xto = W+1; yfr = 0; yto = H+1
  case od
    when 1 then
      xto = q[0]
    when 2 then
      xfr = q[0]
    when 3 then
      yto = q[1]
    when 4 then
      yfr = q[1]
  end
      
  (yfr...yto).each do |i|
    (xfr...xto).each do |j|
      field[i][j] = 0
    end
  end
end

ans = 0
(0...H).each do |i|
  (0...W).each do |j|
    if field[i][j] == 1 then ans += 1 end
  end
end

# output
puts ans
