formula = gets.split

if formula[1] == "+"
  puts formula[0].to_i + formula[2].to_i
else
  puts formula[0].to_i - formula[2].to_i
end

