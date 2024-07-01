b,m=gets.split.map(&:to_i)
pys=[]
city=Array.new(b)
city.each do |ci|
  ci=[]
end

m.times do|i|
  a= gets.split.map(&:to_i)
  pys << a
  no = a[0].to_i
  id = a[1].to_i
  city[no-1] << id
  city[no-1].sort!
end

#pys.each do|py|
#  no = py[0].to_i
#  id = py[1].to_i
#  ab= city[no-1].find_index(id)
#  puts "#{"0"*(6-no.to_s.length)}#{no}#{"0"*(6-(ab+1).to_s.length)}#{ab+1}"
#end
