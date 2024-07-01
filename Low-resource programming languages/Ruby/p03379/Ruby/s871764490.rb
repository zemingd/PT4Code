n = gets.chomp.to_i

num = gets.chomp.split(" ").map(&:to_i)

candidate1 = num.sort[(num.length / 2) - 1]
candidate2 = num.sort[num.length / 2]
centoral = (candidate1.to_f + candidate2.to_f) / 2.0

n.times do |i|
    if num[i] < centoral
        puts candidate2
    else
        puts candidate1
    end
end
