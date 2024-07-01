i = gets.to_i
max =0
(1..i).each do |n|
    (2..10).each do |k|
        a = n**k
         if a <= i
             max = [max, a].max
         end
    end
end
p max