N,Y = gets.split.map(&:to_i)
a = 0
for x in 0..2000

    for y in 0..[((Y-10000 * x) / 5000)+1,N-x].min

        if a == 0 && 10000 * x + 5000 * y + 1000 * (N-x-y) == Y 

            puts "#{x} #{y} #{N-x-y}"
            a += 1

        end

    end

end

if a == 0
    puts "-1 -1 -1"
end