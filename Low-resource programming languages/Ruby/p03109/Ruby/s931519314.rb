class Array
    include Comparable
end

s = gets.chomp.split('/').map(&:to_i)

if s <= [2019, 4, 30]
    puts "Heisei"
else
    puts "TBD"
end