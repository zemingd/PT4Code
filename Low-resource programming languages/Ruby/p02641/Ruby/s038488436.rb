lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

X=lines[0][0]
N=lines[0][1]

unless N==0
  line=lines[1]
zettai_min=0
line=line.sort


N.times do |k|

  unless line.include? (X-k)
    p X-k
    break
  end
  unless line.include? (X+k)
    p X+k
    break
  end
end
else print X
end
