b,m=gets.split.map(&:to_i)
pys=[]
city=Array.new(b)
city.each do |ci|
  ci=[]
end

m.times do|i|
  city[i]=[]
  a= gets.split.map(&:to_i)
  pys << a

  no = a[0].to_i
  id = a[1].to_i
  city[no-1] << id
  city[no-1].sort!
end

pys.each do|py|
  no = py[0].to_i
  id = py[1].to_i
  city[no-1].each_with_index do |ci,i|
    if id == ci
      puts "#{"0"*(6-no.to_s.length)}#{no}#{"0"*(6-(i+1).to_s.length)}#{i+1}"
    end
  end
end
