N = gets.to_i
A = gets.strip.split.map(&:to_i)

if A.count(A.select{|n| A.count(n) >= 2}.max) >= 4

    puts (A.select{|n| A.count(n) >= 2}.max) ** 2

elsif A.select{|n| A.count(n) >= 2}.uniq.sort.size >= 2

    puts A.select{|n| A.count(n) >= 2}.uniq.sort[-1] * A.select{|n| A.count(n) >= 2}.uniq.sort[-2]

else

    puts 0

end



