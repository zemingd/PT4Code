# Your Code Here
while line = gets
    a, b = line.split(" ").map(&:to_i)
    
    if a >= b
        puts "#{b} #{a}"
    elsif a < b
        puts "#{a} #{b}"
    end
        
    break if a == 0 && b == 0
end