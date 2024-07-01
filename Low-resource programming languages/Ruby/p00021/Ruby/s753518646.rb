require "matrix"

#main
n = gets.to_i
arr = Array.new
n.times{arr << gets}

arr.each do |i|
   k = i.split(" ")
   k.map!{|j| j.to_f}
   a = Vector[k[0], k[1]]
   b = Vector[k[2], k[3]]
   c = Vector[k[4], k[5]]
   d = Vector[k[6], k[7]]
   if d == b + (c - a)
      puts "YES"
   else
      puts "NO"
   end
end