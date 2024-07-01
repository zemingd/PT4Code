N = gets.to_i
hen = gets.split(' ').map(&:to_i)

triangle_total = 0
a = 0

while a < N - 2 do
    b = a + 1
    while b < N - 1 do 
        c = b + 1
        while c < N do
            if hen[a] + hen[b] > hen[c]  &&  hen[a] + hen[c] > hen[b] && hen[b] + hen[c] > hen[a]
                triangle_total = triangle_total + 1
            end
            c = c + 1
        end
        b = b + 1
    end
    a = a + 1
end

p triangle_total