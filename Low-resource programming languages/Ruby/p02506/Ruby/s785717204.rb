target = gets.chomp

cnt = 0
until (str = gets.chomp) == "END_OF_TEXT"
    str.split.map(&:downcase).each do |w|
        if w == target
            cnt += 1
        end
    end
end

p cnt