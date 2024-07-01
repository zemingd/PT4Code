b = []
while (a=gets.chomp.to_i) > 0
        b << a
end
b.each_with_index do |n,i|
        puts "Case #{i+1}:#{n}"
end