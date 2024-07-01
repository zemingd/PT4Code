require 'prime'

num = gets.chomp.to_i

i = 0
loop do

    # print Prime.take(i).last.to_i ** 2," ",Prime.take(i+1).last.to_i ** 2,"\n"

    if (Prime.take(i).last.to_i ** 2 < num) && (Prime.take(i+1).last.to_i ** 2 > num)
        puts Prime.take(i).last.to_i ** 2
        break
    end

    i += 1
end
