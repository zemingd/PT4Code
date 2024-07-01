n = gets.to_i
arr = Array.new
n.times do
   arr << [gets.to_i, gets.to_i]
end

arr.each do |i|
   puts i[0] + i[1]
end