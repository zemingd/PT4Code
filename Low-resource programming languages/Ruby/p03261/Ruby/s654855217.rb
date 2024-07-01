n = gets.to_i
w = n.times.map{gets.chomp}

if w.size != w.uniq.size
    puts "No"
    exit
end

shiri = w[0][0]

n.times do |i|
    if w[i][0] != shiri
        puts "No"
        exit
    end
    shiri = w[i][-1]
end

puts "Yes"
