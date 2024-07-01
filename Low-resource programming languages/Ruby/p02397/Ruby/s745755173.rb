loop do
    a, b = gets.chomp.split.map(&:to_i)
    if a == 0 && b == 0
        break
    elsif a < b && a == b
        puts "#{a} #{b}"
    elsif a > b
        puts "#{b} #{a}"
    end
end