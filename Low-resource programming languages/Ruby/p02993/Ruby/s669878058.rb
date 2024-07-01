s = gets.chomp
s = s.split(//).map(&:to_i)

last = 9999
result = "Good"
s.each do |n|
    if n == last
        result = "Bad"
    end
    last = n
end

puts result
