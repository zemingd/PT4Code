N = gets.to_i
a = gets.strip.split.map(&:to_i)
answer = 0

if a.any?{|x| 1 <= x && x <= 399}

    answer += 1

end

if a.any?{|x| 400 <= x && x <= 799}

    answer += 1

end

if a.any?{|x| 800 <= x && x <= 1199}

    answer += 1

end

if a.any?{|x| 1200 <= x && x <= 1599}

    answer += 1

end

if a.any?{|x| 1600 <= x && x <= 1999}

    answer += 1

end

if a.any?{|x| 2000 <= x && x <= 2399}

    answer += 1

end

if a.any?{|x| 2400 <= x && x <= 2799}

    answer += 1

end

if a.any?{|x| 2800 <= x && x <= 3199}

    answer += 1

end

if a.any?{|x| 3200 <= x} 

    if answer == 0

        puts "#{1} #{a.select{|x| 3200 <= x}.size}"

    elsif 1 <= answer && answer <= 7

        puts "#{answer} #{answer+a.select{|x| 3200 <= x}.size}"

    elsif answer == 8

        puts "#{8} #{8+a.select{|x| 3200 <= x}.size}"

    end

else

    puts "#{answer} #{answer}"

end


    