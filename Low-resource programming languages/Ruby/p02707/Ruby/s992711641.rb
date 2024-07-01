n = gets.to_i
a = gets.split.map(&:to_i)
z = [0]*n
a.each{|x|
  z[x-1]+=1
}
puts z
