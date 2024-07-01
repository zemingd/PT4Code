n = gets.to_i
arr = Array.new
n.times do
   arr << [gets.to_i, gets.to_i]
end

arr.each do |i|
   sum = i[0] + i[1]
   if sum.to_s.split("").length > 80
      puts "overflow"
   else
      puts sum
   end
end