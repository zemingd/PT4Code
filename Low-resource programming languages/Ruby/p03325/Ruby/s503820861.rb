n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

ans = 0

arr.each { |a|
    while a % 2 == 0 do
        a /= 2
        ans += 1
    end
}

puts ans