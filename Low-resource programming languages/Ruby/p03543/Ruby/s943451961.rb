n = gets.chomp

f = false
10.times do |i|
    if n =~ /#{i}{3,}/
        f = true
        break
    end
end

puts f ? "Yes" : "No"
