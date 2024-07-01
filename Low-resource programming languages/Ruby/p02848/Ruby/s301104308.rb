N = gets.to_i
S = gets.chomp

arr = []

S.each_char do |s|
    N.times do
        if s == "Z"
            s = "A"
        else
            s.next!
        end
    end

    arr.push(s)
end

puts arr.join()