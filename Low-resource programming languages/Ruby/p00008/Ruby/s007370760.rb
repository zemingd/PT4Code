pattern = Array.new(51,0)

for num1 in 0..9
  for num2 in 0..9
    for num3 in 0..9
      for num4 in 0..9
        pattern[num1+num2+num3+num4] += 1
      end
    end
  end
end

while sum = gets.to_i
 puts pattern[sum]
end