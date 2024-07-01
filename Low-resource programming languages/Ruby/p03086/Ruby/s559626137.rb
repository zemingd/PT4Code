a = gets.to_s
size=[]
a.size.times do |aa|
  size<< aa if a.scan(/(A|T|C|G){#{aa}}/).size>0
end
p size.max