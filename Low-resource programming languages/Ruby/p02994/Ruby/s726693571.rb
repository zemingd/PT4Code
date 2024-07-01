# Bite Eating
N,L = gets.chomp.split(" ").map(&:to_i)
taste = []
taste_min = 0
for i in 0..N-1 do
    taste[i] = L+(i+1)-1
end
taste.sort!

for i in 0..taste.length-1 do #0に一番近い数字を洗濯する
    if i == 0
        taste_min = taste[i]
    elsif i != 0 
        if taste[i] >= 0 #正の数
            if taste[i] - 0 <= taste_min
                taste_min = taste[i]
            end
        elsif taste[i] <= 0#負の数
            if taste[i] - 0 >= taste_min
                taste_min = taste[i]
            end
        end
    end
end
puts (taste.sum - taste_min)