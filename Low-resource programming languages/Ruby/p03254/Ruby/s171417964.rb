N,x,*as=$<.read.split.map(&:to_i)
sum = as.inject(&:+)
as.sort!
if x < as[0]
    puts 0
elsif sum < x
    puts N-1
else
    ret = 0
    as.each do |a|
        if a <= x
            ret += 1
            x -= a
        else
            break
        end
    end

    puts ret
end