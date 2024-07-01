array = []
loop do
  x, y = gets.split.map {|s| s.to_i}
  if x == 0 && y == 0 then
    break
  end
  tmp = []
  tmp << x << y
  array << tmp
end

array.each do |tmp|
  if tmp[0] < tmp[1] then
    puts "#{tmp[0]} #{tmp[1]}"
  else
    puts "#{tmp[1]} #{tmp[0]}"
  end
end