numbers=gets.split(" ").map{|a| a.to_i}
N=numbers[0]
K=numbers[1]

number_list=gets.split(" ")[0...N].map{|a| a.to_i}
number_histogram = Hash.new

number_list.each{|a|
  if nil == number_histogram[a] 
    number_histogram[a] = 1
  else
    number_histogram[a] += 1
  end
}
if number_histogram.size <= K
  print 0
  exit
end
number_histogram = number_histogram.to_a
number_histogram.sort_by!{|a| -a[1]}
print number_histogram[K...N].inject(0){|amount, a| amount += a[1]}
