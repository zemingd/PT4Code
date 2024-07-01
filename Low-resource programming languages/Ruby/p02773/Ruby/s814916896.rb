n=gets.to_i
ss=n.times.map{gets.chomp}.sort
count={}
max=0
ss.each do |s|
  count[s] = (count[s] || 0) + 1
end
max=count.values.max

count.each do |k, v|
  puts k if v == max
end
