while line = gets
  n = line.to_i
  range = 0..9
  count = 0
  
  for a in range
    for b in range
      for c in range
        for d in range
          count += 1 if a + b + c + d == n
        end
      end
    end
  end
  
  puts count
end