n = gets.to_i
dic = []
n.times do |i|
  s,p = gets.chomp.split(" ")
  dic.push([s,p,i+1])
end
dic.sort_by!{|x| [x[0],-x[1].to_i] }
n.times do |i|
  puts dic[i][2]
end
