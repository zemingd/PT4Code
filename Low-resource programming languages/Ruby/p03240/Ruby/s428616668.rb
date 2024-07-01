N = gets.to_i
x = []
y = []
h = []


for i in 0..N-1

    x[i],y[i],h[i] = gets.split.map(&:to_i)

end

for c_x in 0..100

    for c_y in 0..100

        checkanswer = 0
        check = 0

        for i in 0..N-1

            if check == 0

                if h[i] >= 1

                    hh = h[i] + (x[i]-c_x).abs + (y[i]-c_y).abs 
                    check += 1

                end

            elsif check == 1

                if h[i] != [hh-(x[i]-c_x).abs-(y[i]-c_y).abs,0].max

                    checkanswer = 1

                end

            end

            if i == N-1 && checkanswer == 0

                answercx = c_x 
                answercy = c_y 
                answerh = hh 

            end

        end

    end

end

puts "#{answercx} #{answercy} #{answerh}"
