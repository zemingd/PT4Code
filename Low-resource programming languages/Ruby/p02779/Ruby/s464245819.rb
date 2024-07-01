n = gets.to_i
as = gets.split(" ").map(&:to_i)
yes = true
as.sort!

(n-1).times do |i|
    if as[i] == as[i+1]
        puts "NO"
        yes = false
        break
    end
end

puts "YES" if yes
