n = gets.to_i

for i in 1..n
    if i % 3 == 0
        print " #{i}"
    elsif i.to_s.each_char.any?{|c| c=='3'}
        print " #{i}"
    end
end

puts