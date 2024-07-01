h, w = gets.chomp.split(" ").map{|x| x.to_i}
b = readlines

black = []
hh = 1
b.each{|line|
  data = line.chomp.split("")
  ww = 1
  data.each{|x|
    if x == "#"
      black.push([hh, ww])
    end
    ww += 1
    }
  hh += 1
  }

q = []
for i in 1..h do
  for j in 1..w do
    p = []
    black.each{|a|
      p.push((i-a[0]).abs + (j-a[1]).abs)
      }
    q.push(p.min)
  end
end

puts q.max