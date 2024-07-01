a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
goal = gets.chomp.to_i
result = 0

0.upto(a) do |gohyaku|
  0.upto(b) do |hyaku|
    0.upto(c) do |goju|
      result += 1 if goal == gohyaku * 500 + hyaku * 100 + goju * 50
    end
  end
end

puts result
