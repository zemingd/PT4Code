n,d = gets.chomp.split(" ").map{|i|i = i.to_i}
arr = []
n.times {|i|
  arr << gets.chomp.split(" ").map{|i|i = i.to_i}
  #pp arr
}

count = 0
(n-1).times {|i|  
  j = i+1
  while (j < n) do
    sum = 0
    d.times{|arr_i|
      sum += (arr[i][arr_i] -arr[j][arr_i]) ** 2
    }
    #puts "now i = #{i}, j = #{j} sum = #{sum}"
    m = Math.sqrt(sum)
    if(m - m.to_i == 0.0) then count += 1 end 
    j+=1
  end
}

puts count


