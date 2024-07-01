x = gets.to_i
y = gets.to_i
z = gets.to_i

result = 0
[0..x].each do |gohyaku|
  [0..y].each do |hyaku|
    [0..z].each do |goju|
      result += 1 if goal == gohyaku * 500 + hyaku * 100 + goju * 50
    end
  end
end

puts result
