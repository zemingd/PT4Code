n = gets.to_i
a = gets.split.map{|x|x.to_i-1}
b = Array.new(n)

a.each.with_index{|x,i|
  b[x] = i+1
}

puts b*" "
