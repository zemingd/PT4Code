h,w=gets.split.map(&:to_i)
map=[]
h.times {map.push(gets.chomp.split(//))}
row_max=0
col_max=0

map.each do |row|
  tmp=0
  row.each do |ele|
    tmp+=1 if ele=='.'
    tmp=0  if ele=='#'
    row_max=tmp if tmp>row_max
  end
end

map = map.transpose
map.each do |row|
  tmp=0
  row.each do |ele|
    tmp+=1 if ele=='.'
    tmp=0  if ele=='#'
    col_max=tmp if tmp>col_max
  end
end

p row_max+col_max-1
