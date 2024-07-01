while line = gets
  n = line.chomp.to_i
  a = 0
  (1..9).each do |a|
    (1..9).each do |b|
      (1..9).each do |c|
        (1..9).each do |d|
          if a + b + c + d == n
            a += 1
            break
          end
        end
      end
    end
  end
  puts a
end