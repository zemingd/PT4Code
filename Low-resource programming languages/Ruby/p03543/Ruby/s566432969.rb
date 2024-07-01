require 'pp'

chs = gets.chomp!.chars
chs.each_cons(3) do |a, b, c|
    if a == b && b == c
        puts "Yes"
        exit 0
    end
end

puts "No"
