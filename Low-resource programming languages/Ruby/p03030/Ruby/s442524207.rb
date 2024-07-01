N = gets.chomp.to_i
restaurants = []
for i in 1..N do
    sp = gets.chomp.split(' ')
    sp[1] = sp[1].to_i
    sp          <<  i 
    restaurants << sp
end

restaurants.sort!{|a, b| (a[0] <=> b[0]).nonzero? || b[1] <=> a[1]}
restaurants.each do |sp|
    puts sp[2]
end



