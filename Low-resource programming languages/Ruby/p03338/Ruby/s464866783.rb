require 'prime'
 
num = gets.chomp.to_i
 
i = 0
loop do

    # 1が素数ではないので1~3の時の処理

    if num == 1 || num == 2 || num == 3
        puts 1
        exit 
    end
 
    #print Prime.take(i).last.to_i ** 2," ",Prime.take(i+1).last.to_i ** 2,"\n"
 
    if (Prime.take(i).last.to_i ** 2 <= num) && (Prime.take(i+1).last.to_i ** 2 > num)
        puts Prime.take(i).last.to_i ** 2
        break
    end
 
    i += 1
end