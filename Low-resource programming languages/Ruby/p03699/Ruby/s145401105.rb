N = gets.to_i
ss = []
N.times do |i|
    ss[i] = gets.to_i
end

ss.sort!

sum = ss.inject(:+)

if sum % 10 != 0
    puts sum
    exit
else
    ss.each do |s|
        if s % 10 != 0
            puts sum - s
            exit
        end
    end
end

puts 0