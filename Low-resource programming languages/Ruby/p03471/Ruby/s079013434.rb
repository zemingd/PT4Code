n,y=gets.chomp.split(" ").map(&:to_i)

y = y/1000
def search(n , y)
    (0..n).each do |i|
        (0..n-i).each do |j|
            k = n - i - j
            if 10*i + 5*j + k == y
                puts "#{i} #{j} #{k}"
                return true
            end 
        end
    end
    false
end

unless search(n , y) 
    puts "-1 -1 -1"
end
