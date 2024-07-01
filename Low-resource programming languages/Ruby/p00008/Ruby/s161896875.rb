while gets
  ans = 0
  n = $_.to_i

  for a in 0..9
    for b in 0..9
      for c in 0..9
        for d in 0..9
          ans += 1 if a + b + c + d == n
        end
      end
    end
  end

  puts ans
end