n = gets.chomp.to_i
a = gets.chomp.split(" ").map{|i|i = i.to_i}

b=Array.new(n)
a.each_with_index{|elm,i|
  b[elm-1] = i+1
}
puts b.join(" ")