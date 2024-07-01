n = gets
a = gets.split.map(&:to_i)
count = 0
while a.all?(&:even?)
  a.map!{|x| x/2 }
  count+=1
end
puts count