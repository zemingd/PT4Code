while line = gets
  n = line.to_i
  count = 0
  0.upto(9) do |a|
    0.upto(9) do |b|
      0.upto(9) do |c|
        0.upto(9) do |d|
          count += 1 if a+b+c+d == n
        end
      end
    end
  end
  p count
end