while line = gets
  n = line.to_i
  cnt = 0
  if n > 36
    puts 0
  else
    (0..9).each do |a|
      (0..9).each do |b|
        (0..9).each do |c|
          (0..9).each do |d|
            cnt += 1 if a + b + c + d == n
          end
        end
      end
    end
    puts cnt
  end
end