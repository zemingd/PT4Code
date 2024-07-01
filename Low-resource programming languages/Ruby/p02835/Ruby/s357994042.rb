a = gets.chomp.split(" ").map(&:to_i)

sum = 0

a.each do |data|
    sum = sum + data
end

if(sum >= 22)
    puts("bust")
   exit 0 
end

puts("win")