def in_range?(h,w,i,j)
  i>=0 and j>=0 and i<h and j<w
end

def count_illuminated(map,h,w,i,j)
  count=1
  d=[[1,0],[-1,0],[0,1],[0,-1]]
  d.each do |dy,dx|
    ii=i
    jj=j
    ii+=dy
    jj+=dx
    while in_range?(h,w,ii,jj) and map[ii][jj]!='#'
      count+=1
      ii+=dy
      jj+=dx
    end
  end
  count
end

h,w=gets.split.map(&:to_i)
map=[]
ill_count_list=[]
h.times {map.push(gets.chomp.split(//))}
map.each_with_index do |row,i|
  row.each_with_index do |col,j|
    ill_count_list.push(count_illuminated(map,h,w,i,j)) if col=='.'
  end
end

p ill_count_list.max
