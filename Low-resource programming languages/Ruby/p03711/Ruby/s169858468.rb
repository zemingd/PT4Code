a = %w(1 3 5 7 8 10 12)
b = %w(4 6 9 12)
c = %w(2)

x, y = gets.chomp.split

[a, b, c].each do |s|
    if s.include? x and s.include? y
        puts 'Yes'
        exit
    end
end

puts 'No'
