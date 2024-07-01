numbers = gets.to_i
first = Array.new(3){
    Array.new(10){
        0
    }
}
second = Array.new(3){
    Array.new(10){
        0
    }
}
third = Array.new(3){
    Array.new(10){
        0
    }
}
fourth = Array.new(3){
    Array.new(10){
        0
    }
}

numbers.times do
    b,f,r,v = gets.split(' ').map(&:to_i)
    first[f-1][r-1] += v if b == 1
    second[f-1][r-1] += v if b == 2
    third[f-1][r-1] += v if b == 3
    fourth[f-1][r-1] += v if b == 4
end

first.each do |n|
    puts " " + n.join(' ') 
end
puts "#" *20
second.each do |n|
    puts " " +n.join(' ') 
end
puts "#" *20
third.each do |n|
    puts " " + n.join(' ') 
end
puts "#" *20
fourth.each do |n|
    puts " " + n.join(' ') 
end
