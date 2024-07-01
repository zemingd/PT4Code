inputs = gets.split.map(&:to_i)
sum_num = inputs[0]
sum = inputs[1]

(0..sum_num).each do |bilion|
                (0..sum_num).each do |five_tho|
                                one_tho = sum_num - (bilion+five_tho)
                                if one_tho >= 0

                                                if bilion*10000+five_tho*5000+one_tho*1000 == sum && bilion+five_tho+one_tho == sum_num

        puts "#{bilion} #{five_tho} #{one_tho}"

        exit

                                                end
                                end
                end

end

puts "-1 -1 -1"
