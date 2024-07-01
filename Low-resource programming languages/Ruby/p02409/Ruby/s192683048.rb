a= Array.new(3).map{Array.new(10,0)}
e= Array.new(3).map{Array.new(10,0)}
c= Array.new(3).map{Array.new(10,0)}
d= Array.new(3).map{Array.new(10,0)}
n=gets.to_i
n.times do
  b,f,v,r = gets.split.map(&:to_i)
  if b == 1
    a[f-1][v-1] = a[f-1][v-1] + r
  elsif b==2
    e[f-1][v-1] = e[f-1][v-1] + r
  elsif b==3
    c[f-1][v-1] = c[f-1][v-1] + r
  elsif b==4
    d[f-1][v-1] = d[f-1][v-1] + r
  end
end
puts " "+a[0].map(&:to_s).join(" ")
puts " "+a[1].map(&:to_s).join(" ")
puts " "+a[2].map(&:to_s).join(" ")
puts "####################"
puts " "+e[0].map(&:to_s).join(" ")
puts " "+e[1].map(&:to_s).join(" ")
puts " "+e[2].map(&:to_s).join(" ")
puts "####################"
puts " "+c[0].map(&:to_s).join(" ")
puts " "+c[1].map(&:to_s).join(" ")
puts " "+c[2].map(&:to_s).join(" ")
puts "####################"
puts " "+d[0].map(&:to_s).join(" ")
puts " "+d[1].map(&:to_s).join(" ")
puts " "+d[2].map(&:to_s).join(" ")
