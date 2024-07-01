# Your code here!
loop do
    line = gets
    a, b = line.split(" ").map(&:to_i)
    
    if a > b
        puts "#{a} #{b}"
    elsif a < b
        puts "#{b} #{a}"
    else
        puts "#{a} #{b}"
    end
        
    break if x == 0 && y == 0
end