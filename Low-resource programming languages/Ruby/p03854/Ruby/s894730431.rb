s = gets.chomp.split("")
A = 'dream'.split("")
B = 'dreamer'.split("")
C = 'erase'.split("")
D = 'eraser'.split("")
answer = 'YES'
counter = 0
#main
(0 .. s.length - 1).each do |i|
    p ("i=#{i}")
    p ("counter=#{counter}")
    if i != 0 && i <= counter then
        next
    else
        if s[(s.length - 1) - i] == 'r' then
            if s[(s.length - 1) - i - 2] == 'm' then
                (0 .. 6).each do |j|
                    if B[6 - j] != s[(s.length - 1) - i - j] then
                        answer ='NO'
                        print ("#{answer}\n")
                        p B
                        exit
                    end
                    # counter += 1
                end
                counter = i + 6
            else
                (0 .. 5).each do |j|
                    if D[5 - j] != s[(s.length - 1) - i - j] then
                        answer ='NO'
                        print ("#{answer}\n")
                        p D
                        exit
                    end
                    # counter += 1
                end
                counter = i + 5
            end
        else
            if s[(s.length - 1) - i] == 'm' then
                (0 .. 4).each do |j|
                    if A[4 - j] != s[(s.length - 1) - i - j] then
                        answer ='NO'
                        p A
                        print ("#{answer}\n")
                        exit
                    end
                    # counter += 1
                end
                counter = i + 4
            else
                (0 .. 4).each do |j|
                    if C[4 - j] != s[(s.length - 1) - (i + j)] then
                        answer ='NO'
                        print ("#{answer}\n")
                        p i,j
                        p s[(s.length - 1) - i - j]
                        exit
                    end
                    # counter += 1
                end
                counter = i + 4
            end
        end
    end
end
print ("#{answer}\n")