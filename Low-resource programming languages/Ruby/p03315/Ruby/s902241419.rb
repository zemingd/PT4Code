s = gets.split(//).map(&:to_s)

plus = 0
minus = 0
s.each do |sym|
    if sym == "+"
        plus = plus + 1
    elsif sym == "-"
        minus = minus + 1
    end
end

puts plus - minus