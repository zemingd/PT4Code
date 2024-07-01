n = gets.to_i

num = 0

n.to_s.split("").each do |i|
   num += i.to_i 
end

puts n % num == 0 ? "Yes" : "No"