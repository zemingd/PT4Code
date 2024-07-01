k = gets.chomp.to_i
a, b = gets.chomp.split(' ').collect! { |i| i.to_i }

for i in a..b do
    if i % k == 0 then
        puts "OK"
        exit
    end
end

puts "NG"
