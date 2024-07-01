n = gets.chomp.to_i
arr = []
n.times do 
    x = gets.chomp.split(" ").map(&:to_i)
    arr << x.reverse
end
arr = arr.sort
ans = 0
until arr == []
    x,y = arr.shift
    ans += y
    if x < ans
        puts "No"
        exit
    end
end
puts "Yes"