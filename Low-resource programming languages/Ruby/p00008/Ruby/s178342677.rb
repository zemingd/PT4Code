while n = gets.to_i
  combinations = 0
  
  for a in 0..9 do
    for b in 0..9 do
      for c in 0..9 do
        for d in 0..9 do
          combinations = combinations + 1 if a + b + c + d == n
        end
      end
    end
  end
  puts combinations
end