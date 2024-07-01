ary = Array.new(4){Array.new(3){Array.new(10,0)}}

n = gets.chomp.to_i
while line = gets
b,f,r,v = line.split.map(&:to_i)
ary[b-1][f-1][r-1] += v
end

for i in 0..3
  for j in 0..2
    puts " " + ary[i][j].join(" ")
  end
  puts "#" * 20 if i < 3
end
