
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
      result_arr << (a[a_i]+b[b_i]+c[c_i])
    end
  end
end


result_arr.sort!
k.times do|i|
  puts result_arr[result_arr.length-1-i]
end
