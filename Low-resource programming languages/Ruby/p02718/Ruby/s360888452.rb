n, m = gets.split.map(&:to_f)
a = gets.split.map(&:to_f)
b = 0
all = a.inject(:+)
a.each do |i|
    if (i / all) >= 1 / (4 * m) 
        b += 1
    end
end

 if b >= m
     puts 'Yes'
 else
     puts 'No'
 end