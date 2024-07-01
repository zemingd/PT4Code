lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

X=lines[0][0]
N=lines[0][1]
line=lines[1]
if line==nil
  puts X
end
zettai_min=0
line=line.sort

k=0
loop do

 unless line.include? (X-k)
    p X-k
    break
  end 
  unless line.include? (X+k)
    p X+k
    break
  end
  k+=1
end