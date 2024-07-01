a = gets.chomp.split(" ")
n = a.join("").to_i
list = (1..100).to_a.map{ |n| n**2 }
if list.include?(n)
	puts "Yes"
else
	puts "No"
end

