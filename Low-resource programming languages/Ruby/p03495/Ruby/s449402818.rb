numbers=gets.split(" ").map{|a| a.to_i}
  2 N=numbers[0]
  3 K=numbers[1]
  4 
  5 number_list=gets.split(" ")[0..N].map{|a| a.to_i}
  6 number_histogram = Hash.new
  7 
  8 number_list.each{|a|
  9   if nil == number_histogram[a]
 10     number_histogram[a] = 1
 11   else
 12     number_histogram[a] += 1
 13   end
 14 }
 15 number_histogram = number_histogram.to_a
 16 number_histogram.sort_by!{|a| -a[1]}
 17 print number_histogram[K..N].inject(0){|amount, a| amount += a[1]}


