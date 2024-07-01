N = gets.to_i
J = N.times.map{gets.split.map(&:to_i)}

J.sort_by!{|a| a[1]}

now = 0

J.each do |j|
    now += j[0]

    if now > j[1]
        puts "No"
        exit
    end
end

puts "Yes"