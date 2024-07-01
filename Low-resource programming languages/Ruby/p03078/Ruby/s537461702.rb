#s = gets.chomp!
#n = gets.chomp.to_i
#arr = gets.chomp.split(" ").map{|i|i = i.to_i}

x,y,z,k = gets.chomp.split(" ").map{|i|i = i.to_i}.sort
a = gets.chomp.split(" ").map{|i|i = i.to_i}.sort
b = gets.chomp.split(" ").map{|i|i = i.to_i}.sort
c = gets.chomp.split(" ").map{|i|i = i.to_i}.sort
#puts "a=#{a}"
#puts "b=#{b}"
#puts "c=#{c}"
result_arr = []
a.length.times do|a_i|
  b.length.times do|b_i|
    c.length.times do|c_i|
      next if (a_i*b_i*c_i)>k
      aa=a[a_i];bb=b[b_i];cc=c[c_i]
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

#pp s





