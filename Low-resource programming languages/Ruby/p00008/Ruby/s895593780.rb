while input = gets do
  n = input.to_i
  count = 0

  for i in 0..9
    for j in 0..9
      for k in 0..9
        for l in 0..9
          count += 1 if i + j + k + l == n
        end
      end
    end
  end

  puts count
end