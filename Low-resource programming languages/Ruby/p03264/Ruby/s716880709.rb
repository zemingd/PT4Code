k = gets.to_i
odd_count = 0
even_count = 0
(1..k).each do |num|
    if num.odd?
        odd_count += 1
    else
        even_count += 1
    end
end
puts odd_count * even_count