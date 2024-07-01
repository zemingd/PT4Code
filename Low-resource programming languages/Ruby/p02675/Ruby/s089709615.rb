attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0].to_i

case N % 10
when 2,4,5,7,9 then
  puts 'hon'
when 0,1,6,8 then
  puts 'pon'
when 3 then
  puts 'bon'
end