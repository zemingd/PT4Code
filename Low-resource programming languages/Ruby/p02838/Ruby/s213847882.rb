n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)
#ary2 = Array.new(60,0)
ary3 = (0..59).map{|elem| 2**elem % (10**9+7)}
ary4 =[]
ary1.each_with_index{|elem,i|
  str =  elem.to_s(2).reverse
  ary2 = Array.new(60,0)
  str.length.times do |j|
#    p str[j]
#    p str[j].to_i
    ary2[j] += str[j].to_i
    ary4[i] = ary2
  end
}

result =0
 ary4.each_with_index{|elem,i|
#   puts i
   ary5 = ary4[i]
#   p ary4.length
   ary4[i+1..ary4.length].each{|elem1|
     ary5.each_with_index{|elem2,j|
       if (elem1[j] ==1 and elem2 ==0) or (elem1[j] ==0 and elem2 ==1)
         result += ary3[j]
         result = result % (10**9+7)
       else
       end
       }
     }
   }
puts result