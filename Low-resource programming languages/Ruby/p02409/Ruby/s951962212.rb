one = Array.new(3).map{Array.new(10, 0)}
two = Array.new(3).map{Array.new(10, 0)}
three = Array.new(3).map{Array.new(10, 0)}
four = Array.new(3).map{Array.new(10, 0)}

n = STDIN.gets.to_i
for i in 1 .. n do
  input = STDIN.gets.split(" ")
  b = input[0].to_i
  f = input[1].to_i
  r = input[2].to_i
  v = input[3].to_i
  case b
  when 1 then
    one[f-1][r-1] += v
  when 2 then
    two[f-1][r-1] += v
  when 3 then
    three[f-1][r-1] += v
  when 4 then
    four[f-1][r-1] += v
  end
end

for i in 1 .. 4 do
  for j in 0 .. 2 do
    for k in 0 .. 9 do
      case i
      when 1 then
        print " " + one[j][k].to_s 
      when 2 then
        print " " + two[j][k].to_s
      when 3 then
        print " " + three[j][k].to_s
      when 4 then
        print " " + four[j][k].to_s
      end
    end
    print "\n"
  end
  if i != 4
    print "####################\n"
  end
end