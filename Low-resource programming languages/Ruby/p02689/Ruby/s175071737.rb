
N,M=gets.chomp.split(" ").map(&:to_i);
H=gets.chomp.split(" ").map(&:to_i);
#line = readlines.split(" ").map(&:to_i)
line = N.times.map { gets.split.map(&:to_i) }
#N = 6
#M = 5
#H=[8,6,9,1,2,1]
line = [[1,3],[4,2],[4,3],[4,6],[4,6]]
clist=Array.new(N)
i=0
while i<line.length
  if H[line[i][0]-1]>H[line[i][1]-1]
    #H[i][1]番目はない
    clist[line[i][1]-1]="no"
  elsif H[line[i][0]-1]<H[line[i][1]-1]
    #H[i][0]番目はない
    clist[line[i][0]-1]="no"
  elsif H[line[i][0]-1]==H[line[i][1]-1] && clist[line[i][0]-1]="no" 
    clist[line[i][1]-1]="no"
  elsif H[line[i][0]-1]==H[line[i][1]-1] && clist[line[i][1]-1]="no" 
    clist[line[i][0]-1]="no"
  end
  i+=1
end
count = 0

j=0
while j < clist.length
  if clist[j].nil?
    count+=1
  end
  j+=1
end

p count