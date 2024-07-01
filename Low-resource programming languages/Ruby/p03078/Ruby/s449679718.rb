x,y,z,k = gets.chomp.split(" ").map{|i|i = i.to_i}
a = gets.chomp.split(" ").map{|i|i = i.to_i}
b = gets.chomp.split(" ").map{|i|i = i.to_i}
c = gets.chomp.split(" ").map{|i|i = i.to_i}
result_arr = []
a.each do|aa|
  b.each do|bb|
    c.each do|cc|
      n = aa+bb+cc
      l = result_arr.length
      flag=1
      l.times do|i|
        if result_arr[i]<n then
          result_arr.insert(i,n)
          flag=0
          break
        end
      end
      if (flag==1) then
        result_arr << n
      end
    end
  end
end
k.times do|i|
  puts result_arr[i]
end

