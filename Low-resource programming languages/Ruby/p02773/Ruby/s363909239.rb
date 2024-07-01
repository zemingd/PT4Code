N=gets.to_i
S=[]
N.times{S.push(gets.chomp.to_s)}

h=S.group_by(&:itself).map{|key,value| [key, value.length] }.to_h
maxcount=h.values.max.to_i

puts h.delete_if{|key,value| value.to_i < maxcount}.keys.sort
