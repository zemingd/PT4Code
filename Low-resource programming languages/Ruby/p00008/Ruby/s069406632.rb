while tmp = gets
  n = tmp.chomp.to_i
  count = 0
  for a in 0..9
    for b in 0..9
      for c in 0..9
        for d in 0..9
          if a + b + c + d == n
            count += 1

          end
        end
      end
    end
  end
  puts count
end

