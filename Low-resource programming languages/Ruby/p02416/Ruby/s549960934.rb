loop do
    x = gets.chomp.split(//)
    if x == ["0"]
        break
    else
        a = 0
        x.each do |i|
            a += i.to_i
        end
    end
    puts "#{a}"
end