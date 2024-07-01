io = STDIN
n,m=io.gets.split.map(&:to_i)
ar=[]   #no,p,y
m.times do |i|
  ar << [i+1,*io.gets.split.map(&:to_i)]
end
ary=[]
chunk= ar.sort_by{|no,p,y|[p,y]}.chunk{|no,p,y|p}.to_a
chunk.each do |pr,ar|
  sort=ar.sort_by{|no,p,y|y}
  srt=sort.map.with_index(1){|(no,p,y),i|[no,p,y,i]}
  srt.each do |no,p,y,i|
    ary << [no,p,i]
  end
end
ary.sort_by{|x,y,z|x}.each{|x,y,z|puts "%#06d%#06d"%[y,z]}
