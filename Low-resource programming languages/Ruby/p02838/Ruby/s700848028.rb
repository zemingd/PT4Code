n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)
ary2 = Array.new(60,0)
ary3 = (0..59).map{|elem| 2**elem % (10**9+7)}


ary1.each{|elem|
  str =  elem.to_s(2).reverse
  str.length.times do |j|
    ary2[j] += str[j].to_i
  end
}

result = 0
ary2.each_with_index{|elem,index|
  result += ( (n*(n-1)/2) - ((n-elem)*(n-elem-1)/2) -(elem)*(elem-1)/2) * ary3[index]
  result = result % (10**9+7)
  }

puts result