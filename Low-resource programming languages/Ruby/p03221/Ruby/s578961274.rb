b,m=gets.split.map(&:to_i)
pys=[]
m.times do
  pys<<gets.split.map(&:to_i)
end
city=Array.new(b)

m.times do |i|
  city[i]=[]
  pys.each {|py|
    no = py[0].to_i
    id = py[1].to_i
    if no == i+1
      city[i] << id
      city[i].sort!
    end
  }
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
#city.each do |ci|
#  puts ci.join(" ")
#end