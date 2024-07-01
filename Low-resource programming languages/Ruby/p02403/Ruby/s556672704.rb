ary = []
while true
  i = STDIN.gets.split.map do |num| num.to_i end
  break if i[0] == 0 && i[1] == 0
  ary.push i
end

ary.each do |r|
  r[0].times do
    r[1].times do print '#' end
    puts
  end
  puts
end