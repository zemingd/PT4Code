while sum=gets.to_i
  if sum==nil then
    break
  end

  pattern = 0
  for num1 in 0..9
    for num2 in 0..9
      for num3 in 0..9
        for num4 in 0..9
          if num1+num2+num3+num4 == sum then
            pattern += 1
          end
        end
      end
    end
  end
  puts pattern
end