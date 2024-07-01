N=gets.to_i
s=Array.new
N.times do 
  s << gets.chomp
end
maxlen=0
result=Array.new
s.group_by{|i| i}.values.map{|i| maxlen=i.length if maxlen < i.length}
s.group_by{|i| i}.values.map{|i| result<<i[0] if i.length==maxlen}

result.sort.each do |e|
  puts e
end