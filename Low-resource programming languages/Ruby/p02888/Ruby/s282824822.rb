N = gets.to_i
hen = gets.split(' ').map(&:to_i)
hen.sort!
 
triangle_total = 0
a = 0
 
while a < N - 2 do
    b = a + 1
 
    while b < N - 1 do 

        check_num = hen[a] + hen[b]
        
        if check_num <= hen[b + 1]
        elsif check_num > hen[N - 1]
            triangle_total = triangle_total + N - 1 - b
        else            
           c = hen.bsearch_index { |x|  x >= check_num }
           triangle_total = triangle_total + c - 1 - b
        end
 
        b = b + 1
 
    end
    a = a + 1
 
end
 
p triangle_total