t=0
gets.to_i.times.map{gets.split.map &:to_i}.sort{|l,r|l[1]<=>r[1]}.each do |a,b|
  t+=a
  next if t<=b
  puts :No
  exit
end
puts :Yes