# Your Code Here
while line = gets
    a, b = line.split(" ").map(&:to_i)
    
    break if a == 0 && b == 0
    
    if a >= b
        puts "#{b} #{a}"
    elsif a < b
        puts "#{a} #{b}"
    end
end