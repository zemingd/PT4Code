while s = gets do
  ans = 0
  n = s.to_i

  for a in 0..9 do
    for b in 0..9 do
      for c in 0..9 do
        for d in 0..9 do
          if a + b + c + d == n then
            ans += 1
          end
        end
      end
    end
  end

  puts ans
end