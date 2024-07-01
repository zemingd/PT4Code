S = gets.chomp.split("").map(&:to_i)

first = S[0]
count = 0
S.each_with_index do |num,i|
    if (i != 0)&&(i%2 == 0)
        if num != first
            count += 1
        end
    elsif (i !=0 )&&(i%2 == 1)
        if num == first
            count += 1
        end
    end
end
puts count
