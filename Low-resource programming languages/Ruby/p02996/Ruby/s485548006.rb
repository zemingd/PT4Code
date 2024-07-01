# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
# MOD=1000000007


N=gets.to_i

list=N.times.map{gets.split.map(&:to_i)}


list.sort_by!{|a,b| -b}


time=list[0][1]
list.each do |a,b|
  time=b if time>b
  time-=a
end
if time<0
  puts 'No'
else
  puts 'Yes'
end