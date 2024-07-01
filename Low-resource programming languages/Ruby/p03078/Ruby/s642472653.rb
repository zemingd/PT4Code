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
      if ((a_i+1)*(b_i+1)*(c_i+1))>k then
        break
      end
      aa=a[a_i];bb=b[b_i];cc=c[c_i]
      result_arr << (aa+bb+cc)
    end
  end
end


result_arr.sort
k.times do|i|
  puts result_arr[result_arr.length-1-i]
end




#pp s





